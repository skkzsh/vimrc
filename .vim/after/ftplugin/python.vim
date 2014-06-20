" if exists('b:did_my_ftplugin')
"   finish
" endif
" let b:did_my_ftplugin = 1

"---------------------------------------------------------------------------
setlocal tabstop=8
setlocal softtabstop=4
setlocal shiftwidth=4
setlocal expandtab
setlocal smarttab

" setlocal autoindent
" setlocal nosmartindent
" setlocal smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
" setlocal cindent
" setlocal foldmethod=indent
" setlocal foldlevel=99

"---------------------------------------------------------------------------
"" Omni completion
" setlocal omnifunc=pythoncomplete#Complete

"---------------------------------------------------------------------------
compiler python

""" Make Programが存在すれば, 保存後に構文Check
""" ただし, localrc等でb:nopysyntaxcheckを非0に定義すれば抑制可
if !exists('g:nopycompilerset')
  augroup pysyntaxcheck
    autocmd!
    autocmd BufWritePost *.py call PySyntaxCheck()
  augroup END
endif

function! PySyntaxCheck()
  if !(exists('b:nopysyntaxcheck') && b:nopysyntaxcheck != 0)
    silent make % | redraw!
  endif
endfunction
