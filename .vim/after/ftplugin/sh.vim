" if exists('b:did_my_ftplugin')
"   finish
" endif
" let b:did_my_ftplugin = 1

"---------------------------------------------------------------------------
" Bash対応
" let g:is_bash = 1

"" sh.vim
let g:sh_indent_case_labels = 1

"---------------------------------------------------------------------------
compiler sh

""" 保存後に構文Check
""" ただし, localrc等でb:noshsyntaxcheckを非0に定義すれば抑制可
if executable('sh')
  augroup shsyntaxcheck
    autocmd!
    autocmd BufWritePost *.sh call ShSyntaxCheck()
  augroup END
endif

function! ShSyntaxCheck()
  if !(exists('b:noshsyntaxcheck') && b:noshsyntaxcheck != 0)
    silent make %
  endif
endfunction
