if exists("current_compiler")
  finish
endif
let current_compiler = "cpp"

"" MakefileがCurrent Directoryになければ,
"" Make Programはclang++/g++
if !filereadable(expand('%:p:h') . '/Makefile')

  if exists(":CompilerSet") != 2
    command -nargs=* CompilerSet setlocal <args>
  endif

  let s:cpo_save = &cpo
  set cpo&vim

  if executable('clang++')
    CompilerSet makeprg=clang++\ -o\ %<\ %\ -Wall\ -lm\ -O2
  elseif executable('g++')
    CompilerSet makeprg=g++\ -o\ %<\ %\ -Wall\ -lm\ -O2
  else
    let g:nocppcompilerset = 1
  endif

  let &cpo = s:cpo_save
  unlet s:cpo_save

endif
