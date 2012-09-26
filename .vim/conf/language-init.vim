"" Perl Compiler
" augroup plcompiler
"     autocmd!
"     autocmd FileType perl compiler perl
" augroup END

" 廃止
" TODO 言語ごとの個別設定はftplugin,compiler等に書く
"---------------------------------------------------------------------------
"" Xmonad
" autocmd FileType haskell :map <F9> :!xmonad --recompile<CR>

"---------------------------------------------------------------------------
"" Dictionary
" let $DICT=expand('$DOT_VIM/dictionary')
" autocmd FileType c :set dictionary=$DICT/c.dict
" autocmd FileType cc,cpp,cp,cxx :set dictionary=$DICT/cpp.dict
" autocmd FileType tex :set dictionary=$DICT/tex.dict
" autocmd FileType sh :set dictionary=$DICT/shell.dict
" autocmd FileType awk :set dictionary=$DICT/awk.dict
" autocmd FileType perl :set dictionary=$DICT/perl.dict
" autocmd FileType ruby :set dictionary=$DICT/ruby.dict
" autocmd FileType python :set dictionary=$DICT/python_2.5.dict
" autocmd FileType javascript :set dictionary=$DICT/javascript.dict
" autocmd FileType vim :set dictionary=$DICT/vim.dict
" autocmd FileType dosbatch :set dictionary=$DICT/batch.dict
" autocmd FileType html :set dictionary=$DICT/html.dict
" autocmd FileType java :set dictionary=$DICT/java.dict
" autocmd FileType php :set dictionary=$DICT/php.dict
