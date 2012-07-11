" if exists('b:did_ftplugin')
"     finish
" endif
" let b:did_ftplugin = 1

" Bash対応
" let g:is_bash = 1

""" Make Program
if exists(":CompilerSet") != 2
    command -nargs=* CompilerSet setlocal <args>
endif
CompilerSet makeprg=sh\ -n
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

""" 保存時に構文Check
""" ただし, localrc等でb:noshsyntaxcheckを非0に定義すれば抑制可
if executable('sh')
    augroup shsyntaxcheck
        autocmd!
        autocmd BufWritePost *.sh call ShSyntaxCheck()
    augroup END
endif

function! ShSyntaxCheck()
    if !(exists('b:noshsyntaxcheck') && b:noshsyntaxcheck != 0)
        silent make %
    endif
endfunction
