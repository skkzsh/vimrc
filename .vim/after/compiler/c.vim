if exists("my_current_compiler")
  finish
endif
let my_current_compiler = "c"

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
