" if exists('b:did_my_ftplugin')
"     finish
" endif
" let b:did_my_ftplugin = 1

"---------------------------------------------------------------------------
setlocal tabstop=2
setlocal softtabstop=0
setlocal shiftwidth=2

let g:xml_syntax_folding = 1
" setlocal foldmethod=indent

"---------------------------------------------------------------------------
"" Omni completion
" setlocal omnifunc=xmlcomplete#CompleteTags

"---------------------------------------------------------------------------
compiler xml

""" Make Programが存在すれば, 保存後に構文Check
""" ただし, localrc等でb:noxmlsyntaxcheckを非0に定義すれば抑制可
" if !exists('g:noxmlcompilerset')
"   augroup xmlsyntaxcheck
"     autocmd!
"     autocmd BufWritePost * call XmlSyntaxCheck()
"   augroup END
" endif

" function! XmlSyntaxCheck()
"   if !(exists('b:noxmlsyntaxcheck') && b:noxsyntaxcheck != 0)
"     " silent make | redraw!
"   endif
" endfunction

"---------------------------------------------------------------------------
"" TODO: 実行後にCursor位置が変わってしまうので<C-o>
if executable('xmllint')
  nnoremap ,xl <Esc>:%!xmllint --format -<CR>
elseif executable('xmlstarlet')
  nnoremap ,xs <Esc>:%!xmlstarlet fo -<CR>
endif
