if exists("my_current_compiler")
  finish
endif
let my_current_compiler = "ruby"

if exists(":CompilerSet") != 2
    command -nargs=* CompilerSet setlocal <args>
endif
CompilerSet makeprg=ruby\ -c
