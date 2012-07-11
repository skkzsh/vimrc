"""" neocomplcache - 自動補完

"" 起動時に有効化
let g:neocomplcache_enable_at_startup = 1
"" -を入力すると, 候補の横の英数字で選択可
let g:neocomplcache_enable_quick_match = 1
"" 表示される補完の数
let g:neocomplcache_max_list = 1000
"" 自動補完を開始するKeywordの長さ(Default - 2)
"let g:neocomplcache_auto_completion_start_length = 2
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

""" Snipet
imap <C-s> <Plug>(neocomplcache_snippets_expand)
smap <C-s> <Plug>(neocomplcache_snippets_expand)
"" Directory
let g:neocomplcache_snippets_dir = $DOT_VIM . '/conf/snippets'

"---------------------------------------------------------------------------
""neocomplcacheに対して<TAB>で補完
"" {{{ Autocompletion using the TAB key
"" This function determines, wether we are on the start of the line text (then tab indents) or
"" if we want to try autocompletion
function! InsertTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<TAB>"
    else
        if pumvisible()
            return "\<C-N>"
        else
            return "\<C-N>\<C-P>"
        end
    endif
endfunction
"" Remap the tab key to select action with InsertTabWrapper
inoremap <tab> <c-r>=InsertTabWrapper()<cr>
"" }}} Autocompletion using the TAB key

""途中でEnterしたとき、ポップアップを消して改行する
"inoremap <expr> <CR> pumvisible() ? "\<C-Y>\<CR>":"\<CR>"

"" ポップアップメニューのカラーを設定
"hi Pmenu guibg=#666666
"hi PmenuSel guibg=#8cd0d3 guifg=#666666
"hi PmenuSbar guibg=#333333
