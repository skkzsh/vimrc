" if exists("current_compiler")
"   finish
" endif
" let current_compiler = "tidy"

if exists(":CompilerSet") != 2
  command -nargs=* CompilerSet setlocal <args>
endif

" TODO: Opitions

""" 上から順にCommandの存在をCheckして
""" 存在すればそれをMake Programにする
if executable('tidyp')
  if &filetype == 'xhtml'
    CompilerSet makeprg=tidyp\ -qe\ -raw\ -xml\ --gnu-emacs\ yes\ %
  else
    CompilerSet makeprg=tidyp\ -qe\ -raw\ --gnu-emacs\ yes\ %
    " CompilerSet makeprg=tidyp\ -iqe\ -raw\ %
    " CompilerSet makeprg=tidyp\ -iqm\ -raw\ %
  endif

elseif executable('tidy')
  if &filetype == 'xhtml'
    CompilerSet makeprg=tidy\ -qe\ -raw\ -xml\ --gnu-emacs\ yes\ %
  else
    CompilerSet makeprg=tidy\ -qe\ -raw\ --gnu-emacs\ yes\ %
    " CompilerSet makeprg=tidy\ -iqe\ -raw\ %
    " CompilerSet makeprg=tidy\ -iqm\ -raw\ %
  endif

else
  let g:nohtmlcompilerset = 1
endif
