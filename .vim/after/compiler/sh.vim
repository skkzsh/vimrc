if exists("my_current_compiler")
  finish
endif
let my_current_compiler = "sh"

""" Make Program
if exists(":CompilerSet") != 2
    command -nargs=* CompilerSet setlocal <args>
endif
CompilerSet makeprg=sh\ -n

"" $VIMRUNTIME/compiler/perl.vim
" CompilerSet errorformat=
"             \%-G%.%#had\ compilation\ errors.,
"             \%-G%.%#syntax\ OK,
"             \%m\ at\ %f\ line\ %l.,
"             \%+A%.%#\ at\ %f\ line\ %l\\,%.%#,
"             \%+C%.%#
"" $VIMRUNTIME/compiler/ruby.vim
" CompilerSet errorformat=
"             \%+E%f:%l:\ parse\ error,
"             \%W%f:%l:\ warning:\ %m,
"             \%E%f:%l:in\ %*[^:]:\ %m,
"             \%E%f:%l:\ %m,
"             \%-C%\tfrom\ %f:%l:in\ %.%#,
"             \%-Z%\tfrom\ %f:%l,
"             \%-Z%p^,
"     \%-G%.%#
