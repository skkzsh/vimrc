""" Make Program
if exists(":CompilerSet") != 2
    command -nargs=* CompilerSet setlocal <args>
endif
CompilerSet makeprg=ruby\ -c

""" 保存時に構文Check
""" ただし, localrc等でb:norbsyntaxcheckを非0に定義すれば抑制可
if executable('ruby')
    augroup rbsyntaxcheck
        autocmd!
        autocmd BufWritePost *.rb call RbSyntaxCheck()
    augroup END
endif

function! RbSyntaxCheck()
    if !(exists('b:norbsyntaxcheck') && b:norbsyntaxcheck != 0)
        silent make % | redraw!
    endif
endfunction
