if exists("my_current_compiler")
  finish
endif
let my_current_compiler = "cpp"

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
