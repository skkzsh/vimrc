"---------------------------------------------------------------------------
" Bram氏の提供する設定例をインクルード (別ファイル:vimrc_example.vim)。これ
" 以前にg:no_gvimrc_exampleに非0な値を設定しておけばインクルードしない。
if 1 && (!exists('g:no_gvimrc_example') || g:no_gvimrc_example == 0)
    source $VIMRUNTIME/gvimrc_example.vim
endif

"---------------------------------------------------------------------------
"""" フォント設定:

if has('win32')
    " Windows用
    " set guifont=MS_Gothic:h12:cSHIFTJIS
    " set guifont=MS_Gothic:h11:cSHIFTJIS
    " set guifont=MS_Mincho:h12:cSHIFTJIS
    " set guifont=Meiryo:h11:cSHIFTJIS
    " set guifont=Consolas:h11:cSHIFTJIS
    " set guifont=Consolas:h11 guifontwide=MS_Gothic:h10
    " set guifont=Consolas:h11 guifontwide=Meiryo:h10
    set guifont=Consolas:h11 guifontwide=Consolas:h11

    """ 行間隔の設定
    set linespace=1

elseif has('mac')
    " set guifont=Osaka－等幅:h14
    set guifont=Osaka-Mono:h16

elseif has('xfontset')
    " UNIX用 (xfontsetを使用)
    set guifontset=a14,r14,k14

endif

"---------------------------------------------------------------------------
""" ウインドウに関する設定:

"" ウインドウの幅
set columns=80
"" ウインドウの高さ
set lines=40
"" コマンドラインの高さ(GUI使用時)
set cmdheight=2

"---------------------------------------------------------------------------
""" カラースキーム・透明度
if has('gui_macvim')

    "" 不透明 0 ～ 透明 100
    set transparency=10
    " set antialias

    " colorscheme BlackSea
    " colorscheme macvim


elseif has('unix')

    colorscheme BlackSea
    " colorscheme zellner
    " colorscheme morning

elseif has('win32')

    "" 不透明 255 ～ 透明 0
    gui
    set transparency=230

    colorscheme BlackSea
    " colorscheme zellner
    " colorscheme morning

endif


"" StatusLine_Insert
let hi_insert = 'hi StatusLine gui=NONE guifg=Black guibg=DimGray'

"" Cursor
" highlight Cursor gui=NONE guifg=NONE guibg=Yellow
if colors_name == 'BlackSea'
    highlight Cursor gui=NONE guifg=NONE guibg=Turquoise
endif

"" Search
"highlight Search gui=NONE guifg=NONE guibg=LightYellow

"" Visual
" highlight Visual gui=NONE guifg=NONE guibg=Gray

"" Error
" highlight Error gui=NONE guifg=Yellow guibg=Red

"" CursorLine
set cursorline
highlight CursorLine gui=underline guifg=NONE guibg=NONE

"" CursorColumn
" set cursorcolumn
" highlight CursorColumn gui=NONE guifg=NONE guibg=NONE

""" Highlightを自作
""" autocmdや関数の定義はvimrcに
"" 全角Space
highlight ZenkakuSpace gui=NONE guifg=NONE guibg=SkyBlue
"" Tab文字
if colors_name == 'macvim'
    highlight TabString gui=NONE guifg=NONE guibg=Snow3
elseif colors_name == 'BlackSea'
    highlight TabString gui=NONE guifg=NONE guibg=Gray10
endif
"" 行末Space
highlight TrailingSpace gui=NONE guifg=NONE guibg=DeepPink

"---------------------------------------------------------------------------
" 行番号を表示
set number
" バーの表示
set guioptions-=T

"---------------------------------------------------------------------------
" 日本語入力に関する設定:
"
if has('multi_byte_ime') || has('xim')
    " IME ON時のカーソルの色を設定
    highlight CursorIM gui=NONE guifg=NONE guibg=Red
    " 挿入モード・検索モードでのデフォルトのIME状態設定
    set iminsert=0 imsearch=0
    if has('xim') && has('GUI_GTK')
        " XIMの入力開始キーを設定:
        " 下記の s-space はShift+Spaceの意味でkinput2+canna用設定
        "set imactivatekey=s-space
    endif
    " 挿入モードでのIME状態を記憶させない場合、次行のコメントを解除
    "inoremap <silent> <ESC> <ESC>:set iminsert=0<CR>
endif

"---------------------------------------------------------------------------
" マウスに関する設定:
"
" 解説:
" mousefocusは幾つか問題(一例:ウィンドウを分割しているラインにカーソルがあっ
" ている時の挙動)があるのでデフォルトでは設定しない。Windowsではmousehide
" が、マウスカーソルをVimのタイトルバーに置き日本語を入力するとチラチラする
" という問題を引き起す。
"
" どのモードでもマウスを使えるようにする
set mouse=a
" マウスの移動でフォーカスを自動的に切替えない (mousefocus:切替る)
set nomousefocus
" 入力時にマウスポインタを隠す (nomousehide:隠さない)
set mousehide
" ビジュアル選択(D&D他)を自動的にクリップボードへ (:help guioptions_a)
"set guioptions+=a

"---------------------------------------------------------------------------
" メニューに関する設定:
"
" 解説:
" "M"オプションが指定されたときはメニュー("m")・ツールバー("T")供に登録され
" ないので、自動的にそれらの領域を削除するようにした。よって、デフォルトのそ
" れらを無視してユーザが独自の一式を登録した場合には、それらが表示されないと
" いう問題が生じ得る。しかしあまりにレアなケースであると考えられるので無視す
" る。
"
if &guioptions =~# 'M'
    let &guioptions = substitute(&guioptions, '[mT]', '', 'g')
endif

"---------------------------------------------------------------------------
" 印刷に関する設定:
"
" 注釈:
" 印刷はGUIでなくてもできるのでvimrcで設定したほうが良いかもしれない。この辺
" りはWindowsではかなり曖昧。一般的に印刷には明朝、と言われることがあるらし
" いのでデフォルトフォントは明朝にしておく。ゴシックを使いたい場合はコメント
" アウトしてあるprintfontを参考に。
"
" 参考:
"   :hardcopy
"   :help 'printfont'
"   :help printing
"
" 印刷用フォント
if has('printer')
    if has('win32')
        set printfont=MS_Mincho:h12:cSHIFTJIS
        "set printfont=MS_Gothic:h12:cSHIFTJIS
    endif
endif

"---------------------------------------------------------------------------
"" Beep音を消す
if has('win32')
    set noerrorbells
    set visualbell t_vb=
endif

"---------------------------------------------------------------------------
""" Cursorの点滅
set guicursor=a:blinkwait2000-blinkoff500-blinkon500
"" Default
" set guicursor=a:blinkwait175-blinkoff150-blinkon175 
