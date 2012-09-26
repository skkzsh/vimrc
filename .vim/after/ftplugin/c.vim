if exists('b:did_my_ftplugin')
    finish
endif
let b:did_my_ftplugin = 1

compiler c

""" 保存後に構文Check
""" ただし, localrc等でb:nocsyntaxcheckを非0に定義すれば抑制可
if !exists('g:noccompilerset')
    augroup csyntaxcheck
        autocmd!
        autocmd BufWritePost *.[ch] call CSyntaxCheck()
    augroup END
endif

function! CSyntaxCheck()
    if !(exists('b:nocsyntaxcheck') && b:nocsyntaxcheck != 0)
        silent make | redraw!
    endif
endfunction
