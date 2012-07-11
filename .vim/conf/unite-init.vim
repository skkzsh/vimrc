"" Unite

"" Unite BufferをInsert Modeで起動
let g:unite_enable_start_insert = 1
"最近開いたファイル履歴の保存数
let g:unite_source_file_mru_limit = 1000

"" neocomplcacheとの連携
imap <C-k> <Plug>(neocomplcache_start_unite_complete)

"" ESCキーを2回押すと終了する
au FileType unite nnoremap <silent> <buffer> <ESC><ESC> :q<CR>
au FileType unite inoremap <silent> <buffer> <ESC><ESC> <ESC>:q<CR>

"" "Unite Prefix Key
nnoremap [unite] <Nop>
nmap ,u [unite]
"" Keybind
noremap [unite]m :<C-u>Unite file_mru -buffer-name=file_mru<CR>
noremap [unite]b :<C-u>Unite buffer -buffer-name=buffer<CR>
noremap [unite]f :<C-u>Unite file -buffer-name=file<CR>
" noremap [unite]r :<C-u>Unite register -buffer-name=register<CR>
" noremap [unite]fcr :<C-u>Unite file_rec -buffer-name=file_rec<CR>
" noremap [unite]ff :<C-u>UniteWithBufferDir file -buffer-name=file<CR>
" noremap [unite]ffr :<C-u>UniteWithBufferDir file_rec -buffer-name=file_rec<CR>
"" Ref
noremap [unite]rm :<C-u>Unite ref/man<CR>
noremap [unite]rl :<C-u>Unite ref/perldoc<CR>
noremap [unite]rr :<C-u>Unite ref/refe<CR>
noremap [unite]ry :<C-u>Unite ref/pydoc<CR>
" Unite Plugin
noremap [unite]h :<C-u>Unite help -buffer-name=help<CR>
noremap [unite]o :<C-u>Unite outline -buffer-name=outline<CR>
noremap [unite]t :<C-u>Unite tag -buffer-name=tag<CR>
noremap [unite]c :<C-u>Unite history/command<CR>
noremap [unite]s :<C-u>Unite history/search<CR>

"" ウィンドウを分割して開く
" au FileType unite nnoremap <silent> <buffer> <expr> <C-J> unite#do_action('split')
" au FileType unite inoremap <silent> <buffer> <expr> <C-J> unite#do_action('split')
"" ウィンドウを縦に分割して開く
" au FileType unite nnoremap <silent> <buffer> <expr> <C-K> unite#do_action('vsplit')
" au FileType unite inoremap <silent> <buffer> <expr> <C-K> unite#do_action('vsplit')
