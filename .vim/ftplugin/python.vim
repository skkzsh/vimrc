""" Make Program
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

""" Make Programが存在すれば, 保存時に構文Check
""" ただし, localrc等でb:nopysyntaxcheckを非0に定義すれば抑制可
if !exists('g:nopycompilerset')
    augroup pysyntaxcheck
        autocmd!
        autocmd BufWritePost *.py call PySyntaxCheck()
    augroup END
endif

function! PySyntaxCheck()
    if !(exists('b:nopysyntaxcheck') && b:nopysyntaxcheck != 0)
        silent make % | redraw!
    endif
endfunction
