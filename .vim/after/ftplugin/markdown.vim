" if exists('b:did_my_ftplugin')
"   finish
" endif
" let b:did_my_ftplugin = 1

"---------------------------------------------------------------------------
"" Omni completion
" setlocal omnifunc=htmlcomplete#CompleteTags

"---------------------------------------------------------------------------
compiler markdown

""" HTMLが存在すれば, 保存後にMake
""" ただし, localrc等でb:nomarkdownmakeを非0に定義すれば抑制可
if has('unix') && !exists('g:nomarkdowncompilerset')
  augroup markdownmake
    autocmd!
    autocmd BufWritePost * call MarkdownMake()
  augroup END
endif

function! MarkdownMake()
  if filewritable(expand('%:p:r') . '.html')
    silent make | redraw!
  endif
endfunction

" if isdirectory('/Applications/Marked.app')
"   command! MarkedOpen silent exe "!/Applications/Marked.app/Contents/Resources/mark '%:p'" | redraw!
" endif

"---------------------------------------------------------------------------
""" QuickRun
let g:quickrun_config = {
      \
      \    'markdown': {
      \
      \      'outputter': 'browser',
      \
      \      'type':
      \              executable('rdiscount')        ? 'markdown/rdiscount':
      \              executable('multimarkdown')    ? 'markdown/multimarkdown':
      \              executable('MultiMarkdown.pl') ? 'markdown/MultiMarkdown.pl':
      \              executable('bluecloth')        ? 'markdown/bluecloth':
      \              executable('markdown')         ? 'markdown/markdown':
      \              executable('Markdown.pl')      ? 'markdown/Markdown.pl':
      \              executable('pandoc')           ? 'markdown/pandoc':
      \              executable('redcarpet')        ? 'markdown/redcarpet':
      \              executable('kramdown')         ? 'markdown/kramdown':
      \              executable('mdown')            ? 'markdown/mdown':
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
