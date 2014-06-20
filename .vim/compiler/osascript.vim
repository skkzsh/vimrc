if exists("current_compiler")
  finish
endif
let current_compiler = "osascript"

if exists(":CompilerSet") != 2
  command -nargs=* CompilerSet setlocal <args>
endif

let s:cpo_save = &cpo
set cpo&vim

CompilerSet makeprg=osascript\ %

let &cpo = s:cpo_save
unlet s:cpo_save
