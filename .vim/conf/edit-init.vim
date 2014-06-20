"" Edit Settings

"---------------------------------------------------------------------------
" 編集に関する設定:

" help tabstop
" 画面上でのTabの幅
" set tabstop=8
set tabstop=4

" Tabの挿入幅 (0のときは?)
" set softtabstop=0
set softtabstop=4
" 自動インデント幅
set shiftwidth=4
"(tabstop, softtabstop) = (4, 0), (8, 4)

" TabをSpaceに展開するか
" set noexpandtab
set expandtab
" 自動的なIndent
set autoindent
" Smart Indent
set smartindent
" Smart Tab
" setlocal smarttab
" バックスペースでインデントや改行を削除できるようにする
set backspace=indent,eol,start
" テキスト挿入中の自動折り返しを日本語に対応させる
set formatoptions+=mM

"C Indent
set cindent

"" 継続行のIndent
let g:vim_indent_cont = 0

"---------------------------------------------------------------------------
" Visual Modeで文字がないところへも移動
set virtualedit=block
" block, all, ...

"---------------------------------------------------------------------------
""" 括弧の自動補完
" inoremap { {}<LEFT>
" inoremap ( ()<LEFT>
" inoremap [ []<LEFT>
" inoremap " ""<LEFT>
" inoremap ' ''<LEFT>
" vnoremap { "zdi^V{<C-R>z}<ESC>
" vnoremap ( "zdi^V(<C-R>z)<ESC>
" vnoremap [ "zdi^V[<C-R>z]<ESC>
" vnoremap " "zdi^V"<C-R>z^V"<ESC>
" vnoremap ' "zdi'<C-R>z'<ESC>

"---------------------------------------------------------------------------
""" Aspell/Ispell
"" TODO
"map :!aspell --lang=en -c %<CR>
"map :!aspell --lang=en -c %<CR>

"---------------------------------------------------------------------------
""" autodate
" Keyword (Default - pre="\cLast Change:" post="\.")
" FIXME : EmacsのようにSpaceがあっても有効になるようにする
let autodate_keyword_pre = "Last Modified: <"
let autodate_keyword_post = ">"
" let autodate_keyword_pre = "Last \%(Change\|Modified\):"
" let autodate_keyword_pre = "Last Modified:"
" let autodate_keyword_post = "."
"" Format
let autodate_format = "%Y/%m/%d %H:%M:%S %Z"
