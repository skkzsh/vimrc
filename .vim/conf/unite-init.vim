"" Unite

"---------------------------------------------------------------------------
"" Unite BufferをInsert Modeで起動
let g:unite_enable_start_insert = 1
"最近開いたファイル履歴の保存数
let g:unite_source_file_mru_limit = 1000

"---------------------------------------------------------------------------
"" neocomplcacheとの連携
imap <C-l> <Plug>(neocomplcache_start_unite_complete)

"" ESCキーを2回押すと終了する
augroup uniteescape
  autocmd FileType unite nnoremap <silent> <buffer> <ESC><ESC> :q<CR>
  autocmd FileType unite inoremap <silent> <buffer> <ESC><ESC> <ESC>:q<CR>
augroup END

"" "Unite Prefix Key
nnoremap [unite] <Nop>
nmap ,u [unite]
"" Keybind
noremap [unite]mr :<C-u>Unite file_mru -buffer-name=file_mru<CR>
noremap [unite]bf :<C-u>Unite buffer -buffer-name=buffer<CR>
noremap [unite]fl :<C-u>Unite file -buffer-name=file<CR>
noremap [unite]rg :<C-u>Unite register -buffer-name=register<CR>
" noremap [unite]fr :<C-u>Unite file_rec -buffer-name=file_rec<CR>
" noremap [unite]ff :<C-u>UniteWithBufferDir file -buffer-name=file<CR>
" noremap [unite]ffr :<C-u>UniteWithBufferDir file_rec -buffer-name=file_rec<CR>
"" Bookmark
noremap [unite]ba :<C-u>UniteBookmarkAdd<CR>
noremap [unite]bm :<C-u>Unite bookmark -buffer-name=bookmark<CR>
"" Grep
noremap [unite]gr :<C-u>Unite grep -buffer-name=grep<CR>
noremap [unite]vg :<C-u>Unite vimgrep -buffer-name=vimgrep<CR>
noremap [unite]gg :<C-u>Unite grep/git -buffer-name=git-grep<CR>
"" Ref
noremap [unite]rmn :<C-u>Unite ref/man -buffer-name=man<CR>
noremap [unite]rpl :<C-u>Unite ref/perldoc -buffer-name=perldoc<CR>
noremap [unite]rpy :<C-u>Unite ref/pydoc -buffer-name=pydoc<CR>
noremap [unite]rrf :<C-u>Unite ref/refe -buffer-name=refe<CR>
noremap [unite]rri :<C-u>Unite ref/ri -buffer-name=ri<CR>
"" Plugins
noremap [unite]hl :<C-u>Unite help -buffer-name=help<CR>
noremap [unite]mk :<C-u>Unite mark -buffer-name=mark<CR>
noremap [unite]ol :<C-u>Unite outline -buffer-name=outline<CR>
noremap [unite]tg :<C-u>Unite tag -buffer-name=tag<CR>
noremap [unite]hc :<C-u>Unite history/command -buffer-name=command-history<CR>
noremap [unite]hs :<C-u>Unite history/search -buffer-name=search-history<CR>
noremap [unite]qf :<C-u>Unite qf -buffer-name=quickfix<CR>
noremap [unite]ak :<C-u>Unite ack -buffer-name=ack<CR>
noremap [unite]rc :<C-u>Unite quickrun_config -buffer-name=quickrun_config<CR>
noremap [unite]gs :<C-u>Unite gist -buffer-name=gist<CR>
noremap [unite]jf :<C-u>Unite junkfile -buffer-name=junkfile<CR>

"---------------------------------------------------------------------------
"" ウィンドウを分割して開く
" autocmd FileType unite nnoremap <silent> <buffer> <expr> <C-J> unite#do_action('split')
" autocmd FileType unite inoremap <silent> <buffer> <expr> <C-J> unite#do_action('split')
"" ウィンドウを縦に分割して開く
" autocmd FileType unite nnoremap <silent> <buffer> <expr> <C-K> unite#do_action('vsplit')
" autocmd FileType unite inoremap <silent> <buffer> <expr> <C-K> unite#do_action('vsplit')

"---------------------------------------------------------------------------
"" Plugins
if executable('ack')
  let g:unite_source_ack_command = 'ack'
  " let g:unite_source_grep_default_opts = '--no-color'
endif
