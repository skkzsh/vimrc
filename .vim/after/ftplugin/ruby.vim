" if exists('b:did_my_ftplugin')
"   finish
" endif
" let b:did_my_ftplugin = 1

"---------------------------------------------------------------------------
setlocal tabstop=2
setlocal softtabstop=0
setlocal shiftwidth=2

"---------------------------------------------------------------------------
"" Omni completion
" setlocal omnifunc=rubycomplete#Complete

"---------------------------------------------------------------------------
compiler ruby

""" 保存後に構文Check
""" ただし, localrc等でb:norbsyntaxcheckを非0に定義すれば抑制可
if executable('ruby')
  augroup rbsyntaxcheck
    autocmd!
    autocmd BufWritePost *.rb call RbSyntaxCheck()
  augroup END
endif

function! RbSyntaxCheck()
  if !(exists('b:norbsyntaxcheck') && b:norbsyntaxcheck != 0)
    silent make % | redraw!
  endif
endfunction
