"---------------------------------------------------------------------------
""" Insert/Normal ModeでStatusLineの色を変更
"au InsertEnter * hi StatusLine guifg=DarkBlue guibg=DarkYellow gui=none ctermfg=Blue ctermbg=Yellow cterm=none
"au InsertLeave * hi StatusLine guifg=DarkBlue guibg=DarkGray gui=none ctermfg=Blue ctermbg=DarkGray cterm=none

"" StatusLine_Insert
if has('mac')
    let hi_insert = 'hi StatusLine cterm=none ctermfg=Black ctermbg=Brown'
elseif has('unix')
    let hi_insert = 'hi StatusLine cterm=none ctermfg=Black ctermbg=Gray'
elseif has('win32')
    let hi_insert = 'hi StatusLine cterm=none ctermfg=Black ctermbg=Gray'
endif

"---------------------------------------------------------------------------
" buftabs: Buffer一覧を表示
"パスを省略してファイル名のみ表示
"let g:buftabs_only_basename = 1
"ステータスライン内に表示
"let g:buftabs_in_statusline = 1
" 現在のバッファをハイライト
"let g:buftabs_active_highlight_group = "Visual"
