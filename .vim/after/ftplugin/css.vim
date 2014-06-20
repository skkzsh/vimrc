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
" setlocal omnifunc=csscomplete#CompleteCSS

"---------------------------------------------------------------------------
" compiler css
compiler csslint

""" Make Programが存在すれば, 保存後に構文Check
""" ただし, localrc等でb:nocsssyntaxcheckを非0に定義すれば抑制可
" if !exists('g:nocsscompilerset')
"   augroup csssyntaxcheck
"     autocmd!
"     autocmd BufWritePost *.css call CssSyntaxCheck()
"   augroup END
" endif
" 
" function! CssSyntaxCheck()
"   if !(exists('b:nocsssyntaxcheck') && b:nocsssyntaxcheck != 0)
"     silent make | redraw!
"   endif
" endfunction
