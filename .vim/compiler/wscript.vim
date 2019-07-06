if exists("current_compiler")
  finish
endif
let current_compiler = "wscript"

if exists(":CompilerSet") != 2
  command -nargs=* CompilerSet setlocal <args>
endif

let s:cpo_save = &cpo
set cpo&vim

CompilerSet makeprg=wscript\ %
" CompilerSet makeprg=%

let &cpo = s:cpo_save
unlet s:cpo_save
