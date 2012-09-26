if exists('b:did_my_ftplugin')
    finish
endif
let b:did_my_ftplugin = 1

compiler cpp

""" 保存後に構文Check
""" ただし, localrc等でb:nocppsyntaxcheckを非0に定義すれば抑制可
if !exists('g:nocppcompilerset')
    augroup cppsyntaxcheck
        autocmd!
        autocmd BufWritePost *.cpp,*.cc,*.cxx,*.c++, call CppSyntaxCheck()
        autocmd BufWritePost *.hpp,*.hh,*.hxx, call CppSyntaxCheck()
        if has("fname_case")
            autocmd BufWritePost *.C,*.H call CppSyntaxCheck()
        endif
    augroup END
endif

function! CppSyntaxCheck()
    if !(exists('b:nocppsyntaxcheck') && b:nocppsyntaxcheck != 0)
        silent make | redraw!
    endif
endfunction
