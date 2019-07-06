"" Appearance Settings
"---------------------------------------------------------------------------
""" GUI固有ではない画面表示の設定:

""" 行番号の表示
"set number
""" ルーラーの表示
set ruler
""" 長い行を折り返して表示
set wrap
""" 常にステータス行を表示 (詳細は:he laststatus)
set laststatus=2
""" コマンドラインの高さ (Windows用gvim使用時はgvimrcを編集すること)
set cmdheight=2
""" コマンドをステータス行に表示
set showcmd
""" タイトルの表示
set title
"" Status Line
" set statusline=
""" 括弧入力時に対応する括弧の表示
set showmatch
set matchtime=1

"タブバーの表示
"set showtabline=2

"" 折りたたみ
set foldmethod=syntax

""
" set ambiwidth=double

"" 不可視文字の表示
" set list
"" どの文字でタブや改行を表示するか
" set listchars=tab:>-,extends:>,trail:-,eol:<,precedes:<,nbsp:%
" set listchars=tab:»\ ,extends:»,trail:-,eol:↲,precedes:«,nbsp:%
