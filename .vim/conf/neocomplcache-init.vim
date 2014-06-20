"""" neocomplcache - 自動補完

"---------------------------------------------------------------------------
"" 起動時に有効化
let g:neocomplcache_enable_at_startup = 1
"" Use smartcase
let g:neocomplcache_enable_smart_case = 1
"" -を入力すると, 候補の横の英数字で選択可
let g:neocomplcache_enable_quick_match = 1
"" 表示される補完の数
let g:neocomplcache_max_list = 1000
"" 自動補完を開始するKeywordの長さ(Default - 2)
"let g:neocomplcache_auto_completion_start_length = 2

"" Define keyword
" if !exists('g:neocomplcache_keyword_patterns')
"     let g:neocomplcache_keyword_patterns = {}
" endif
" let g:neocomplcache_keyword_patterns['default'] = '\h\w*'

"---------------------------------------------------------------------------
"" Dictionary
"let g:neocomplcache_dictionary_filetype_lists = {
"            \ 'default' : '',
"            \ 'c' : $HOME . '$DICT/cpp.dict',
"            \ 'tex' : $HOME . '$DICT/tex.dict',
"            \ 'sh' : $HOME . '$DICT/shell.dict',
"            \ 'awk' : $HOME . '/$DICT/awk.dict',
"            \ 'perl' : $HOME . '$DICT/perl.dict',
"            \ 'ruby' : $HOME . '$DICT/ruby.dict',
"            \ 'javascript' : $HOME . '$DICT/javascript.dict'
"\ }

"---------------------------------------------------------------------------
"" Key
" inoremap <expr><C-g>     neocomplcache#undo_completion()
" inoremap <expr><C-l>     neocomplcache#complete_common_string()
" <TAB>: completion
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
" inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
" inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
" inoremap <expr><C-y>  neocomplcache#close_popup()
" inoremap <expr><C-e>  neocomplcache#cancel_popup()

"---------------------------------------------------------------------------
" Omni completion
if !exists('g:neocomplcache_omni_patterns')
  let g:neocomplcache_omni_patterns = {}
endif
" let g:neocomplcache_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'

"---------------------------------------------------------------------------
""" clang
if executable('clang')

  if has('mac')

  elseif has('unix')
    if has('python')
      "" libclang を使用して高速に補完を行う
      let g:neocomplcache_clang_use_library=1
    endif
    "" clang.dll or libclang.so or libclang.dyib
    "" がある$PATH or Library Path
    let g:neocomplcache_clang_library_path = '/usr/local/lib'
  endif

  ""
  if has('unix')
    let g:neocomplcache_clang_user_options =
    \ '-I /usr/include '.
    \ '-I /usr/include/c++ '.
    \ '-I /usr/include/qt4 '.
    \ '-I /usr/include/boost' .
    \ '-I /usr/local/include/boost' .
    \ '-I /usr/lib/boost '.
    \ '-fms-extensions -fgnu-runtime '.
    \ '-include malloc.h '
  endif
endif

"---------------------------------------------------------------------------
""" Snipet
"" Key
imap <C-k> <Plug>(neosnippet_expand_or_jump)
smap <C-k> <Plug>(neosnippet_expand_or_jump)
"" Directory
let g:neosnippet#snippets_directory = $DOT_VIM . '/conf/snippets'
