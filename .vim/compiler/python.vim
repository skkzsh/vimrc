if exists("current_compiler")
  finish
endif
let current_compiler = "python"

if exists(":CompilerSet") != 2
  command -nargs=* CompilerSet setlocal <args>
endif

let s:cpo_save = &cpo
set cpo&vim

""" 上から順にCommandの存在をCheckして
""" 存在すればそれをMake Programにする
if executable('pychecker')
  CompilerSet makeprg=pychecker
elseif executable('flake8')
  CompilerSet makeprg=flake8
elseif executable('pep8')
  CompilerSet makeprg=pep8
elseif executable('pyflakes')
  CompilerSet makeprg=pyflakes
elseif executable('pylint')
  CompilerSet makeprg=pylint
else
  let g:nopycompilerset = 1
endif

let &cpo = s:cpo_save
unlet s:cpo_save
