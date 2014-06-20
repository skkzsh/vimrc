" if exists('b:did_my_ftplugin')
"   finish
" endif
" let b:did_my_ftplugin = 1

"---------------------------------------------------------------------------
setlocal tabstop=8
setlocal softtabstop=4
setlocal shiftwidth=4

"---------------------------------------------------------------------------
let perl_fold = 1
let perl_fold_blocks = 1

"---------------------------------------------------------------------------
compiler perl

""" 保存後に構文Check
""" ただし, localrc等でb:noplsyntaxcheckを非0に定義すれば抑制可
if executable('perl')
  augroup plsyntaxcheck
    autocmd!
    autocmd BufWritePost *.pl,*.pm call PlSyntaxCheck()
  augroup END
endif

function! PlSyntaxCheck()
  if !(exists('b:noplsyntaxcheck') && b:noplsyntaxcheck != 0)
    silent make | redraw!
  endif
endfunction

"---------------------------------------------------------------------------
" """ 保存前にPerl::Tidy
" """ ただし, localrc等でb:noplsyntaxcheckを非0に定義すれば抑制可
" if executable('perltidy')
"     augroup perltidy
"         autocmd!
"         autocmd BufWritePre *.pl call PerlTidy()
"     augroup END
" endif
"
" function! PerlTidy()
"     if !(exists('b:noplsyntaxcheck') && b:noplsyntaxcheck != 0)
"         "" 保存後にCursor位置が変わってしまう
"         %!perltidy
"     endif
" endfunction

"" 実行後にCursor位置が変わってしまうので<C-o>
if executable('perltidy')
  nnoremap ,pt <Esc>:%!perltidy<CR><C-o>
  vnoremap ,pt <Esc>:'<,'>!perltidy -q<CR>
endif

" map ,pc <Esc>:%!perlcritic<CR><C-o>

"---------------------------------------------------------------------------
"" NeoComplCache
" let g:neocomplcache_omni_patterns.perl = '\h\w*->\h\w*\|\h\w*::'
