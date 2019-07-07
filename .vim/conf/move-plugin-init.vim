"" Motion Settings by Plugins

"---------------------------------------------------------------------------
"""" Vim Filer
"" Netrwの代わりに起動
let g:vimfiler_as_default_explorer = 1
"" Safe Modeの無効
let g:vimfiler_safe_mode_by_default = 0

"---------------------------------------------------------------------------
"""" Ref
let g:ref_alc_encoding = 'utf-8'
"" webdict
let g:ref_source_webdict_sites = {
\ 'p': 'http://ja.wikipedia.org/wiki/%s',
\ 't': 'http://thesaurus.weblio.jp/content/%s',
\ 'e': 'http://ejje.weblio.jp/content/%s',
\ 'd': 'http://weblio.jp/content/%s',
\ }
let g:ref_source_webdict_sites.default = 'e'

"---------------------------------------------------------------------------
"""" Easy Motion
let g:EasyMotion_leader_key = ';'

"---------------------------------------------------------------------------
"""" poslist -- 細かい移動履歴
map <C-o> <Plug>(poslist-prev-pos)
map <C-i> <Plug>(poslist-next-pos)
" Buffer単位で移動
map <Leader><C-o> <Plug>(poslist-prev-buf)
map <Leader><C-i> <Plug>(poslist-next-buf)

"---------------------------------------------------------------------------
"""" visualstar -- Visual Modeで*
" 検索した後に移動しない
"nnoremap * *N
"nnoremap # #N
"" visualstarで検索した後に移動しない
"map * <Plug>(visualstar-*)N
"map # <Plug>(visualstar-#)N
"" NにKeyMappingされている場合
"noremap <Plug>N N
"map * <Plug>(visualstar-*)<Plug>N
"map # <Plug>(visualstar-#)<Plug>N

"---------------------------------------------------------------------------
"" anzu
" mapping
" nmap n <Plug>(anzu-n-with-echo)
" nmap N <Plug>(anzu-N-with-echo)
" nmap * <Plug>(anzu-star-with-echo)
" nmap # <Plug>(anzu-sharp-with-echo)

" clear status
" nmap <Esc><Esc> <Plug>(anzu-clear-search-status)

" statusline
" set statusline=%{anzu#search_status()}

"---------------------------------------------------------------------------
"""" Tag List
map ,tl :Tlist<CR>

"---------------------------------------------------------------------------
"""" quickrun
let g:quickrun_config = {}

"---------------------------------------------------------------------------
"""" Vim Doc ja
" helptags $DOT_VIM/bundle/vimdoc-ja/doc
" set helplang=ja,en
set notagbsearch " Bug対策

"---------------------------------------------------------------------------
"""" Migemo
"" migemo.vimはCopy
"" UNIXでは:
"" C/Migemoとmigemo-dictはMake Install
"" Windowsでは:
"" C/Migemo(とMigemo)とmigemo-dictはCopy

set incsearch
if has('migemo')
  set migemo
  if has('mac')
    " let s:prefix_migemo = '/usr/local/share/migemo'
    set migemodict=/usr/local/share/migemo/utf-8/migemo-dict
  elseif has('win32')
    " let s:prefix_migemo = 'C:/Applications/cmigemo-default/dict'
    set migemodict=C:/Applications/cmigemo-default/dict/utf-8/migemo-dict
  endif
endif

" TODO : Prefix
" set migemodict=expand(s:prefix_migemo\ .\ '/utf-8/migemo-dict')
" unlet s:prefix_migemo

