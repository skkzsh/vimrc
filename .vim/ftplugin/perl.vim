let perl_fold=1
let perl_fold_blocks=1

"" ココに書いたらError
" compiler perl

""" 保存時に構文Check
""" ただし, localrc等でb:noplsyntaxcheckを非0に定義すれば抑制可
if executable('perl')
    augroup plsyntaxcheck
        autocmd!
        autocmd BufWritePost *.pl call PlSyntaxCheck()
    augroup END
endif

function! PlSyntaxCheck()
    if !(exists('b:noplsyntaxcheck') && b:noplsyntaxcheck != 0)
        silent make | redraw!
    endif
endfunction
