"" MakefileがCurrent Directoryになければ,
"" Make Programはclang/gcc
if !filereadable(expand('%:p:h') . '/Makefile')

    if exists(":CompilerSet") != 2
        command -nargs=* CompilerSet setlocal <args>
    endif

    if executable('clang')
        CompilerSet makeprg=clang\ -o\ %<\ %\ -Wall\ -lm\ -O2
    elseif executable('gcc')
        CompilerSet makeprg=gcc\ -o\ %<\ %\ -Wall\ -lm\ -O2
    else
        let g:noccompilerset = 1
    endif

endif


""" 保存時に構文Check
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
