if exists("current_compiler")
  finish
endif
let current_compiler = "cscript"

if exists(":CompilerSet") != 2
  command -nargs=* CompilerSet setlocal <args>
endif

let s:cpo_save = &cpo
set cpo&vim

CompilerSet makeprg=cscript\ %
" CompilerSet makeprg=%

let &cpo = s:cpo_save
unlet s:cpo_save
