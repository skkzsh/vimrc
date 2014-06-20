" if exists('b:did_my_ftplugin')
"   finish
" endif
" let b:did_my_ftplugin = 1

"---------------------------------------------------------------------------
""" HTMLが存在すれば, 保存後にMake
""" ただし, localrc等でb:norstmakeを非0に定義すれば抑制可
if has('unix') && !exists('g:norstcompilerset')
  augroup rstmake
    autocmd!
    autocmd BufWritePost *.rst call RSTMake()
  augroup END
endif

function! RSTMake()
  if filewritable(expand('%:p:r') . '.html')
    silent make | redraw!
  endif
endfunction


"---------------------------------------------------------------------------
""" QuickRun
let g:quickrun_config = {
      \
      \   'rst': {
      \
      \       'outputter': 'browser',
      \
      \       'type': 
      \               executable('rst2html.py') ? 'rst/rst2html.py':
      \               executable('pandoc')      ? 'rst/pandoc':
      \               '',
      \
      \    },
      \
      \    'rst/rst2html.py': {
      \        'command': 'rst2html.py',
      \    },
      \
      \    'rst/pandoc': {
      \        'command': 'pandoc',
      \        'exec': '%c --from=rst --to=html %s',
      \    },
      \
      \ }

"" command - rst2html.py, rst2s5.py, rst2pdf, rst2latex.py
