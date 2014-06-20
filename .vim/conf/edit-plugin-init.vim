"" Edit Settings by Plugins

"---------------------------------------------------------------------------
" TComment
" if !(has('mac'))
"     let g:tcommentMapLeader1 = '<C-\>'
" endif

"---------------------------------------------------------------------------
" Kill Ring
" Historyの保存先
let g:yankring_history_dir = expand('$HOME')
let g:yankring_history_file = '.yankring_history'
" YRShow
"noremap <silent> <F7> : YRShow<CR>
let g:yankring_max_history = 50
let g:yankring_window_height = 13

" Easy Motion
"let g:EasyMotion_leader_key = '<Leader>'

"---------------------------------------------------------------------------
" Align - 整形処理
" 日本語環境設定
let g:Align_xstrlen = 3
" Menuの表示名
"let g:DrChipTopLvlMenu = ""
