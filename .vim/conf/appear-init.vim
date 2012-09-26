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

"タブバーの表示
"set showtabline=2

"" 折りたたみ(indent,syntax,marker)
set foldmethod=syntax" 不可視文字の表示

" set list
" どの文字でタブや改行を表示するか
" set listchars=tab:>-,extends:>,trail:-,eol:<,precedes:<,nbsp:%
" set listchars=tab:»\ ,extends:»,trail:-,eol:↲,precedes:«,nbsp:%

"---------------------------------------------------------------------------
" Color
"" 256色
set t_Co=256

" 画面を黒地に白にする (次行の先頭の " を削除すれば有効になる)
"colorscheme evening " (Windows用gvim使用時はgvimrcを編集すること)
"colorscheme habiLight
"colorscheme xoria256
"colorscheme BlackSea
" Snapshot by CSApptrox.vim
"colorscheme BlackSeaSnapshot

"" Highlight

"" Cursor
" highlight Cursor term=NONE cterm=NONE ctermfg=NONE ctermbg=White

"" Search
"highlight Search term=reverse cterm=NONE ctermfg=NONE ctermbg=LightYellow

"" Visual
" highlight Visual term=reverse cterm=NONE ctermfg=NONE ctermbg=Gray

"" Error
" highlight eRror term=reverse cterm=NONE ctermfg=Yellow ctermbg=Red

"" CursorLine
" set cursorline
" highlight CursorLine term=underline cterm=underline ctermfg=NONE ctermbg=NONE

"" CursorColumn
" set cursorcolumn
" highlight CursorColumn term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE


""" Highlightを自作

"" 全角Space
highlight ZenkakuSpace term=underline cterm=NONE ctermfg=NONE ctermbg=LightCyan
"" Tab文字
highlight TabString term=underline cterm=NONE ctermfg=NONE ctermbg=LightGray
"" 行末Space
highlight TrailingSpace term=underline cterm=NONE ctermfg=NONE ctermbg=Magenta

"" Script内でMulti Bite文字を使うときはEncoding指定が必要
scriptencoding utf-8

function! MoreHighlight()
    "" 全角Space
    syntax match ZenkakuSpace "　" display containedin=ALL
    "" Tab文字
    syntax match TabString "\t" display containedin=ALL
    "" 行末Space
    syntax match TrailingSpace "\s\+$" display containedin=ALL
endfunction

augroup morehighlight
    autocmd!
    autocmd ColorScheme * call MoreHighlight()
    autocmd BufEnter,VimEnter,WinEnter * call MoreHighlight()
augroup END

" augroup morehighlight

    " autocmd!

    "" 全角Space
    " syntax match ZenkakuSpace "　" display containedin=ALL
    " highlight ZenkakuSpace term=underline cterm=NONE ctermfg=NONE ctermbg=lightblue
    " autocmd ColorScheme * highlight ZenkakuSpace term=underline cterm=NONE ctermfg=NONE ctermbg=lightblue
    " syntax match ZenkakuSpace containedin=ALL /　/
    " autocmd Syntax * syntax match ZenkakuSpace containedin=ALL /　/
    " match ZenkakuSpace /　/
    " autocmd BufEnter,VimEnter,WinEnter * match ZenkakuSpace /　/

    "" Tab
    " syntax match TabString "\t" display containedin=ALL
    " highlight TabString term=underline cterm=NONE ctermfg=NONE ctermbg=lightgreen
    " " autocmd ColorScheme * highlight TabString term=underline cterm=NONE ctermfg=NONE ctermbg=lightblue
    " syntax match TabString containedin=ALL /\t/
    " autocmd Syntax * syntax match TabString containedin=ALL /\t/
    " match TabString /\t/
    " autocmd BufEnter,VimEnter,WinEnter * match TabString /\t/

    "" 行末Space
    " syntax match TrailingSpace "\s\+$" display containedin=ALL
    " highlight TrailingSpace term=underline cterm=NONE ctermfg=NONE ctermbg=lightred
    " autocmd ColorScheme * highlight TrailingSpace term=underline cterm=NONE ctermfg=NONE ctermbg=lightred
    " syntax match TrailingSpace containedin=ALL /\s\+$/
    " autocmd Syntax * syntax match TrailingSpace containedin=ALL /\s\+$/
    " match TrailingSpace /\s\+$/
    " autocmd BufEnter,VimEnter,WinEnter * match TrailingSpace /\s\+$/

" augroup END
