" if exists('b:did_my_ftplugin')
"   finish
" endif
" let b:did_my_ftplugin = 1

"---------------------------------------------------------------------------
setlocal tabstop=2
setlocal softtabstop=0
setlocal shiftwidth=2

" setlocal foldmethod=indent

"---------------------------------------------------------------------------
"" Omni completion
" setlocal omnifunc=htmlcomplete#CompleteTags

"---------------------------------------------------------------------------
" compiler html
compiler tidy

""" Make Programが存在すれば, 保存後に構文Check
""" ただし, localrc等でb:nohtmlsyntaxcheckを非0に定義すれば抑制可
" if !exists('g:nohtmlcompilerset')
"   augroup htmlsyntaxcheck
"     autocmd!
"     autocmd BufWritePost *.html,*.html,*.shtml,*.stm call HtmlSyntaxCheck()
"   augroup END
" endif
" 
" function! HtmlSyntaxCheck()
"   if !(exists('b:nohtmlsyntaxcheck') && b:nohtmlsyntaxcheck != 0)
"     silent make | redraw!
"   endif
" endfunction

"---------------------------------------------------------------------------
"" TODO: 実行後にCursor位置が変わってしまうので<C-o>
if executable('tidyp')
  if &filetype == 'xhtml'
    " nnoremap ,ht <Esc>:%!tidyp -iq -raw -xml<CR>
    nnoremap ,ht <Esc>:silent !tidyp -iqm -raw -xml %<CR>:e! %<CR>:redraw!<CR>
  else
    " nnoremap ,ht <Esc>:%!tidyp -iq -raw<CR>
    nnoremap ,ht <Esc>:silent !tidyp -iqm -raw %<CR>:e! %<CR>:redraw!<CR>
  endif

elseif executable('tidy')
  if &filetype == 'xhtml'
    " nnoremap ,ht <Esc>:%!tidy -iq -raw -xml<CR>
    nnoremap ,ht <Esc>:silent !tidy -iqm -raw -xml %<CR>:e! %<CR>:redraw!<CR>
  else
    " nnoremap ,ht <Esc>:%!tidy -iq -raw<CR>
    nnoremap ,ht <Esc>:silent !tidy -iqm -raw %<CR>:e! %<CR>:redraw!<CR>
  endif
endif
