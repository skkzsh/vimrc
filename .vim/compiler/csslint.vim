if exists("current_compiler")
  finish
endif
let current_compiler = "csslint"

if exists(":CompilerSet") != 2
  command -nargs=* CompilerSet setlocal <args>
endif

let s:cpo_save = &cpo
set cpo&vim

" TODO: errorformat

""" Commandの存在をCheckして
""" 存在すればそれをMake Programにする
if executable('csslint')
  CompilerSet makeprg=csslint\ --format=compact\ %
  CompilerSet errorformat=
        \%-G,
        \%-G%f:\ lint\ free!,
        \%f:\ line\ %l\\,\ col\ %c\\,\ %trror\ -\ %m,
        \%f:\ line\ %l\\,\ col\ %c\\,\ %tarning\ -\ %m,
        \%f:\ line\ %l\\,\ col\ %c\\,\ %m
  "" See syntastic
  " CompilerSet errorformat=%A%f:\ line\ %l\\,\ col\ %c\\,\ %m
  " CompilerSet errorformat=%f:%l:%c:%m,
  "   \%-G%.%#
else
  let g:nocsscompilerset = 1
endif

let &cpo = s:cpo_save
unlet s:cpo_save
