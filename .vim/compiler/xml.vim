if exists("current_compiler")
  finish
endif
let current_compiler = "xml"

if exists(":CompilerSet") != 2
  command -nargs=* CompilerSet setlocal <args>
endif

let s:cpo_save = &cpo
set cpo-=C

" TODO: errorformat
" TODO: Opitions

""" Commandの存在をCheckして
""" 存在すればそれをMake Programにする
if executable('xmllint')

  if &filetype == 'xhtml'
    " CompilerSet makeprg=xmllint\ --noout\ --postvalid\ --xinclude\ --html\ %
    CompilerSet makeprg=xmllint\ --noout\ --valid\ --xinclude\ --html\ %
  else
    CompilerSet makeprg=xmllint\ --noout\ --postvalid\ --xinclude\ %
    "" See syntastic
    " CompilerSet makeprg=xmllint\ --noout\ --valid\ %
  endif

  CompilerSet errorformat=
        \%E%f:%l:\ error\ :\ %m,
        \%-G%f:%l:\ validity\ error\ :\ Validation\ failed:\ no\ DTD\ found\ %m,
        \%W%f:%l:\ warning\ :\ %m,
        \%W%f:%l:\ validity\ warning\ :\ %m,
        \%E%f:%l:\ validity\ error\ :\ %m,
        \%E%f:%l:\ parser\ error\ :\ %m,
        \%E%f:%l:\ %m,
        \%-Z%p^,
        \%-G%.%#
  "" See syntastic
  " CompilerSet errorformat=%E%f:%l:\ error:\ %m,
  "         \%W%f:%l:\ warning:\ %m,
  "         \%E%f:%l:\ validity\ error:\ %m,
  "         \%W%f:%l:\ validity\ warning:\ %m,
  "         \%-Z%p^,
  "         \%-G%.%#
  " CompilerSet errorformat=%f:%l:\ %m

elseif executable('xmlstarlet')
  " CompilerSet makeprg=xmlstarlet\ val\ -w\ %

else
  let g:noxmlcompilerset = 1
endif

let &cpo = s:cpo_save
unlet s:cpo_save
