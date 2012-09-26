if exists('b:did_my_ftplugin')
    finish
endif
let b:did_my_ftplugin = 1

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
