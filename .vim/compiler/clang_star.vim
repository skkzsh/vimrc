if exists("current_compiler")
  finish
endif
let current_compiler = "clang_star"

"" MakefileがCurrent Directoryになければ, Make Programは
"" clang++/g++
"" clang/gcc
if !filereadable(expand('%:p:h') . '/Makefile')

  if exists(":CompilerSet") != 2
    command -nargs=* CompilerSet setlocal <args>
  endif

  let s:cpo_save = &cpo
  set cpo&vim

  if &filetype == 'cpp'
    if executable('clang++')
      CompilerSet makeprg=clang++\ -o\ %<\ %\ -Wall\ -lm\ -O2
    elseif executable('g++')
      CompilerSet makeprg=g++\ -o\ %<\ %\ -Wall\ -lm\ -O2
    else
      let g:noccompilerset = 1
    endif

  else
    if executable('clang')
      CompilerSet makeprg=clang\ -o\ %<\ %\ -Wall\ -lm\ -O2
    elseif executable('gcc')
      CompilerSet makeprg=gcc\ -o\ %<\ %\ -Wall\ -lm\ -O2
    else
      let g:noccompilerset = 1
    endif
  endif

  let &cpo = s:cpo_save
  unlet s:cpo_save

endif
