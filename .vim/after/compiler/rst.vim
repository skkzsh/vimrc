if exists("my_current_compiler")
  finish
endif
let my_current_compiler = "rst"

if exists(":CompilerSet") != 2
    command -nargs=* CompilerSet setlocal <args>
endif
""" 上から順にCommandの存在をCheckして
""" 存在すればそれをMake Programにする
if executable('rst2html.py')
    CompilerSet makeprg=rst2html.py\ %\ >\ %<.html
elseif executable('pandoc')
    CompilerSet makeprg=pandoc\ --from=rst\ --to=html\ %\ >\ %<.html
endif
