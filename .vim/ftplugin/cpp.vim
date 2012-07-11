"" MakefileがCurrent Directoryになければ,
"" Make Programはclang++/g++
if !filereadable(expand('%:p:h') . '/Makefile')

    if exists(":CompilerSet") != 2
        command -nargs=* CompilerSet setlocal <args>
    endif

    if executable('clang++')
        CompilerSet makeprg=clang++\ -o\ %<\ %\ -Wall\ -lm\ -O2
    elseif executable('g++')
        CompilerSet makeprg=g++\ -o\ %<\ %\ -Wall\ -lm\ -O2
    else
        let g:nocppcompilerset = 1
    endif

endif


""" 保存時に構文Check
""" ただし, localrc等でb:nocppsyntaxcheckを非0に定義すれば抑制可
if !exists('g:nocppcompilerset')
    augroup cppsyntaxcheck
        autocmd!
        autocmd BufWritePost *.cpp,*.cc,*.cxx,*.c++,*C call CppSyntaxCheck()
        autocmd BufWritePost *.hpp,*.hh,*.hxx,*.*H call CppSyntaxCheck()
    augroup END
endif

function! CppSyntaxCheck()
    if !(exists('b:nocppsyntaxcheck') && b:nocppsyntaxcheck != 0)
        silent make | redraw!
    endif
endfunction
