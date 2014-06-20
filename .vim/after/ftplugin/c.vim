" if exists('b:did_my_ftplugin')
"   finish
" endif
" let b:did_my_ftplugin = 1

"---------------------------------------------------------------------------
setlocal tabstop=8
setlocal softtabstop=4
setlocal shiftwidth=4

"---------------------------------------------------------------------------
compiler clang_star

""" 保存後に構文Check
""" ただし, localrc等でb:nocsyntaxcheckを非0に定義すれば抑制可

" if !exists('g:noccompilerset')
"   augroup csyntaxcheck
"     autocmd!
"     autocmd BufWritePost *.[ch] call CSyntaxCheck()
"   augroup END
" endif

if !exists('g:noccompilerset')
  augroup csyntaxcheck
    autocmd!
    autocmd BufWritePost *.[ch] call CSyntaxCheck()
    autocmd BufWritePost *.cpp,*.cc,*.cxx,*.c++, call CSyntaxCheck()
    autocmd BufWritePost *.hpp,*.hh,*.hxx, call CSyntaxCheck()
    if has("fname_case")
      autocmd BufWritePost *.C,*.H call CSyntaxCheck()
    endif
  augroup END
endif

function! CSyntaxCheck()
  if !(exists('b:nocsyntaxcheck') && b:nocsyntaxcheck != 0)
    silent make | redraw!
  endif
endfunction

"---------------------------------------------------------------------------
"" NeoComplCache
" let g:neocomplcache_omni_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
