if exists("current_compiler")
  finish
endif
let current_compiler = "sh"

""" Make Program
if exists(":CompilerSet") != 2
  command -nargs=* CompilerSet setlocal <args>
endif

let s:cpo_save = &cpo
set cpo&vim

" TODO: errorformat

CompilerSet makeprg=sh\ -n
CompilerSet errorformat=%f:\ line\ %l:\ %m
"" See syntastic

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

let &cpo = s:cpo_save
unlet s:cpo_save
