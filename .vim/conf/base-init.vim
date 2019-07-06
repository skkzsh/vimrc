"" Basic Settings

"---------------------------------------------------------------------------
"" vi との互換性OFF
set nocompatible

"" File Type検出, Plugin, IndentをON
filetype plugin indent on

"---------------------------------------------------------------------------
" Bram氏の提供する設定例をインクルード (別ファイル:vimrc_example.vim)。これ
" 以前にg:no_vimrc_exampleに非0な値を設定しておけばインクルードはしない。
if filereadable($VIMRUNTIME . '/vimrc_example.vim')
\ && (!exists('g:no_vimrc_example') || g:no_vimrc_example == 0)
  if &guioptions !~# 'M'
    " vimrc_example.vimを読み込む時はguioptionsにMフラグをつけて、syntax on
    " やfiletype plugin onが引き起こすmenu.vimの読み込みを避ける。こうしない
    " とencに対応するメニューファイルが読み込まれてしまい、これの後で読み込
    " まれる.vimrcでencが設定された場合にその設定が反映されずメニューが文字
    " 化けてしまう。
    set guioptions+=M
    source $VIMRUNTIME/vimrc_example.vim
    set guioptions-=M
  else
    source $VIMRUNTIME/vimrc_example.vim
  endif
endif

"---------------------------------------------------------------------------
" バックアップファイルを作成しない
set nobackup

" ファイルの上書きの前にバックアップを作る
" (ただし、backup がオンでない限り、バックアップは上書きに成功した後削除される)
"set writebackup

"---------------------------------------------------------------------------
"" おまじない
set shellslash

"---------------------------------------------------------------------------
"" Beep音を消す
" set noerrorbells
set visualbell
set t_vb=

"---------------------------------------------------------------------------
"" Insert/Command ModeでEmacs Keybind
"" TODO
" emacscommandline

"" 移動
map! <C-a> <Home>
imap <C-e> <End>
map! <C-b> <Left>
map! <C-f> <Right>
" imap <C-f> <Right>
imap <C-n> <Down>
imap <C-p> <Up>
"imap <A-b> <C-Left>
"imap <A-f> <C-Right>
"imap <ESC>< <ESC>ggi
"imap <ESC>> <ESC>Gi

"" 編集
map! <C-d> <Del>
" imap <C-d> <Del>
"imap <C-j> <Enter>
"imap <A-d> <ESC>dwi
" FIXME : 先頭で<C-k>したときの動作が意図しない
"map! <C-k> <ESC>lC
"imap <C-y> <ESC>Pi
"map! <C-\> <C-^>

"" コマンド補完
"cmap <C-i> <C-l>
"cmap <C-i><C-i> <C-d>
"cmap <> <C-i>
"cmap <> <C-f>
"cmap <> <C-a>

"---------------------------------------------------------------------------
" Python3
" if has('mac')
  " set pythonthreehome=$HOME/.pyenv/versions/3.6.4
  " set pythonthreedll=$HOME/.pyenv/versions/3.6.4/lib/libpython3.6m.a
  " set pythonthreehome=/usr/local/opt/python3/Frameworks/Python.framework/Versions/3.7
  " set pythonthreedll=/usr/local/opt/python3/Frameworks/Python.framework/Versions/3.7/Python
" endif
