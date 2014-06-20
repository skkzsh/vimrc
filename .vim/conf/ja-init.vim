"" Japanese Settings

"---------------------------------------------------------------------------
"" Encode
set encoding=utf-8
" set fileencoding=
set fileencodings=iso-2022-jp-3,iso-2022-jp,euc-jisx0213,euc-jp,utf-8,ucs-bom,euc-jp,eucjp-ms,cp932,sjis

"" 改行Code
"" TODO
set fileformat=unix
set fileformats=unix,dos,mac

"---------------------------------------------------------------------------
""SCIMでVi協調モード
""挿入モードで日本語入力してから、
"コマンドモードに移行するとき自動的に日本語入力をOFFにする
""SCIMの終了キーをCtrl+Shift+Spaceを設定しておく
""xvkbdをインストールしておく
""iBusでも協調モードにできる
"if !(has('win32'))
"  inoremap <silent> <esc> <esc>:call ForceImeOff()<cr>
"  function! ForceImeOff()
"    let imeoff = system('xvkbd -text "\[Control]\[Shift]\[space]" > /dev/null 2>&1')
"  endfunction
"別の書き方
"  imap <silent> <esc> <esc>:call ForceImeOff()<esc><esc>
"  function! ForceImeOff()
"    let imeoff = system('xvkbd -text "\[Control]\[Shift]\[space]" > /dev/null 2>&1')
"  endfunction
"endif
"正常に動作しない
