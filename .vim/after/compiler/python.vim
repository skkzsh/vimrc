if exists("my_current_compiler")
  finish
endif
let my_current_compiler = "python"

if exists(":CompilerSet") != 2
    command -nargs=* CompilerSet setlocal <args>
endif

""" 上から順にCommandの存在をCheckして
""" 存在すればそれをMake Programにする
if executable('flake8')
    CompilerSet makeprg=flake8
elseif executable('pychecker')
    CompilerSet makeprg=pychecker
elseif executable('pyflakes')
    CompilerSet makeprg=pyflakes
elseif executable('pep8')
    CompilerSet makeprg=pep8
elseif executable('pylint')
    CompilerSet makeprg=pylint
else
    let g:nopycompilerset = 1
endif
