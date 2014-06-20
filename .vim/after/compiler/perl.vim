" if exists("current_compiler")
"   finish
" endif
" let current_compiler = "perl"

if exists(":CompilerSet") != 2
  command -nargs=* CompilerSet setlocal <args>
endif
CompilerSet makeprg=perl\ -wc\ %
" Default
" CompilerSet makeprg=perl\ -Wc\ %
