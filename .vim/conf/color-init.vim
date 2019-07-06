"" Color Settings

"---------------------------------------------------------------------------
"" 256 Color
set t_Co=256

"---------------------------------------------------------------------------
"" Color Scheme

" 画面を黒地に白にする (次行の先頭の " を削除すれば有効になる)
"colorscheme evening " (Windows用gvim使用時はgvimrcを編集すること)
"colorscheme habiLight
"colorscheme xoria256
"colorscheme BlackSea
" Snapshot by CSApptrox.vim
"colorscheme BlackSeaSnapshot

" if &term == ''
"     set background=dark
"     colorscheme solarized
" elseif &term == ''
"     set background=light
"     colorscheme solarized
" endif

"---------------------------------------------------------------------------
"" Highlight (Default)

"" Cursor
" highlight Cursor term=NONE cterm=NONE ctermfg=NONE ctermbg=White

"" Search
" highlight Search term=reverse cterm=NONE ctermfg=NONE ctermbg=LightYellow

"" Visual
" highlight Visual term=reverse cterm=NONE ctermfg=NONE ctermbg=Gray

"" Error
" highlight Error term=reverse cterm=NONE ctermfg=Yellow ctermbg=Red

"" CursorLine
" set cursorline
" highlight CursorLine term=underline cterm=underline ctermfg=NONE ctermbg=NONE

"" CursorColumn
" set cursorcolumn
" highlight CursorColumn term=NONE cterm=standout ctermfg=NONE ctermbg=NONE


"---------------------------------------------------------------------------
""" Highlightを自作

"" 全角Space
highlight ZenkakuSpace term=underline cterm=NONE ctermfg=NONE ctermbg=LightCyan
"" Tab文字
highlight TabString term=underline cterm=NONE ctermfg=NONE ctermbg=LightGray
"" 行末Space
highlight TrailingSpace term=underline cterm=NONE ctermfg=NONE ctermbg=LightRed

augroup morehighlight
  autocmd!
  autocmd ColorScheme * call MoreHighlight()
  autocmd BufEnter,VimEnter,WinEnter * call MoreHighlight()
augroup END

"" Script内でMulti Bite文字を使うときはEncoding指定が必要
scriptencoding utf-8

"" XXX : Helpに入った時に可視化されてしまう
"" 以下でOK?
function! MoreHighlight()
  if &filetype != 'help' && &filetype != 'go'
    "" 全角Space
    syntax match ZenkakuSpace "　" display containedin=ALL
    "" Tab文字
    syntax match TabString "\t" display containedin=ALL
    "" 行末Space
    syntax match TrailingSpace "\s\+$" display containedin=ALL
  endif
endfunction

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

"---------------------------------------------------------------------------
" lightline
" let g:lightline = {
" \ 'colorscheme': 'wombat',
" \ }

"---------------------------------------------------------------------------
" Power Line
" TODO
" let g:Powerline_symbols = 'fancy'
" let g:Powerline_theme = ''
" let g:Powerline_colorscheme = ''
