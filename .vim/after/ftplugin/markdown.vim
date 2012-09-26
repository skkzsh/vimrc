if exists('b:did_my_ftplugin')
    finish
endif
let b:did_my_ftplugin = 1

compiler markdown

""" HTMLが存在すれば, 保存後にMake
""" ただし, localrc等でb:nomarkdownmakeを非0に定義すれば抑制可
if has('unix') && !exists('g:nomarkdowncompilerset') && filewritable(expand('%:p:r') . '.html')
    augroup markdownmake
        autocmd!
        autocmd BufWritePost * call MarkdownMake()
    augroup END
endif

function! MarkdownMake()
    if !(exists('b:nomarkdownmake') && b:nomarkdownmake != 0)
        silent make | redraw!
    endif
endfunction


""" QuickRun
let g:quickrun_config = {
\
\    'markdown': {
\
\      'outputter': 'browser',
\
\      'type': 
\              executable('mdown')            ? 'markdown/mdown':
\              executable('pandoc')           ? 'markdown/pandoc':
\              executable('multimarkdown')    ? 'markdown/multimarkdown':
\              executable('MultiMarkdown.pl') ? 'markdown/MultiMarkdown.pl':
\              executable('rdiscount')        ? 'markdown/rdiscount':
\              executable('bluecloth')        ? 'markdown/bluecloth':
\              executable('markdown')         ? 'markdown/markdown':
\              executable('Markdown.pl')      ? 'markdown/Markdown.pl':
\              executable('redcarpet')        ? 'markdown/redcarpet':
\              executable('kramdown')         ? 'markdown/kramdown':
\              '',
\
\    },
\
\    'markdown/mdown': {
\      'command': 'mdown',
\      'exec': '%c -i %s',
\    },
\
\    'markdown/multimarkdown': {
\      'command': 'multimarkdown',
\    },
\    'markdown/MultiMarkdown.pl': {
\      'command': 'MultiMarkdown.pl',
\    },
\
\    'markdown/rdiscount': {
\      'command': 'rdiscount',
\    },
\
\    'markdown/markdown': {
\      'command': 'markdown',
\    },
\
\ }

" typeは,
" :echo g:quickrun_config.markdown.type
" または,
" :echo g:quickrun_config['markdown']['type']
" で確認できる.
