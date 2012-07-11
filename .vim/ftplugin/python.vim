""" Make Program
if exists(":CompilerSet") != 2
    command -nargs=* CompilerSet setlocal <args>
endif

""" $B>e$+$i=g$K(BCommand$B$NB8:_$r(BCheck$B$7$F(B
""" $BB8:_$9$l$P$=$l$r(BMake Program$B$K$9$k(B
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

""" Make Program$B$,B8:_$9$l$P(B, $BJ]B8;~$K9=J8(BCheck
""" $B$?$@$7(B, localrc$BEy$G(Bb:nopysyntaxcheck$B$rHs(B0$B$KDj5A$9$l$PM^@)2D(B
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
