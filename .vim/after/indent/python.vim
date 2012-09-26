if exists("b:did_my_indent")
   finish
endif
let b:did_my_indent = 1

setlocal tabstop=8
setlocal softtabstop=4
setlocal shiftwidth=4
setlocal expandtab
setlocal smarttab

" setlocal autoindent
" setlocal nosmartindent
" setlocal smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
" setlocal cindent
" setlocal foldmethod=indent
" setlocal foldlevel=99
