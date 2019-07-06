"" Motion Settings

"---------------------------------------------------------------------------
""" 検索の挙動に関する設定:

"" 検索時にファイルの最後まで行ったら最初に戻る (nowrapscan:戻らない)
"set wrapscan
" コマンドライン補完するときに強化されたものを使う(参照 :help wildmenu)
set wildmenu

" 検索時に大文字小文字を無視 (noignorecase:無視しない)
set ignorecase
" 大文字小文字の両方が含まれている場合は大文字小文字を区別
set smartcase

"---------------------------------------------------------------------------
""" Command History 保存数
set history=10000

"---------------------------------------------------------------------------
"" MiniBuffer時に大文字小文字を無視
" Version 7.3072 以降?
set wildignorecase

" full, longest, list
" (C-dでも一覧表示される)
set wildmode=list,full
" set wildmode=longest:full,full
" set wildmode=longest,full
" set wildmode=longest,list
" set wildmode=list:full
" set wildmode=list:longest

"---------------------------------------------------------------------------
""" マウスを使えるようにする
"" Macで使えない
set mouse=a
if !has('nvim')
  set ttymouse=xterm2
endif

"---------------------------------------------------------------------------
"" grep
if executable('grep')
  set grepprg=grep\ -nH
endif

"---------------------------------------------------------------------------
""" Undo History
if has('persistent_undo')
  set undodir=~/.vimundo
  set undofile
endif

"---------------------------------------------------------------------------
" emacs follow: scroll bind two windows one screenful apart
" nmap <silent><Leader>ef :vsplit<bar>wincmd l<bar>exe "norm!Ljz<c-v><cr>"<cr>:set scb<cr>:wincmd h<cr>:set scb<cr>
