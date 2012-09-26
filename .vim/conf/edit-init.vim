"---------------------------------------------------------------------------
" 編集に関する設定:

" help tabstop
" 画面上でのTabの幅
" set tabstop=8
set tabstop=4

" Tabの挿入幅 (0のときは?)
" set softtabstop=0
set softtabstop=4
" 自動インデント幅
set shiftwidth=4
"(tabstop, softtabstop) = (4, 0), (8, 4)

" TabをSpaceに展開するか
" set noexpandtab
set expandtab
" 自動的なIndent
set autoindent
" Smart Indent
set smartindent
" Smart Tab
" setlocal smarttab
" バックスペースでインデントや改行を削除できるようにする
set backspace=indent,eol,start
" テキスト挿入中の自動折り返しを日本語に対応させる
set formatoptions+=mM

"C Indent
set cindent

"---------------------------------------------------------------------------
" Visual Modeで文字がないところへも移動
set virtualedit=block
" block, all, ...

"---------------------------------------------------------------------------
""" 該当するShebangがあれば, 保存時にChange Mode +x
""" ただし, b:noshebangchmodxを非0に定義すれば抑制可
if executable('chmod')
    augroup shebangchmodx
        autocmd!
        autocmd BufWritePost * silent call ShebangChmodX()
    augroup END
endif

function! ShebangChmodX()
    " b:noshebangchmodxが未定義, または0で定義されていれば
    if !(exists('b:noshebangchmodx') && b:noshebangchmodx != 0)
        "" +xでなければ
        if !executable(expand('%:p')) && (
                    \ getline(1) =~ '^#!.*sh'
                    \ || getline(1) =~ '^#!.*perl'
                    \ || getline(1) =~ '^#!.*ruby'
                    \ || getline(1) =~ '^#!.*python'
                    \ )
            "" Change Mode +x
            !chmod +x %
        endif
    endif
endfunction

""" Change Mode +xするかどうかは拡張子でなく,
""" 内容で判断するもの(Commandなど)なので,
""" '該当する拡張子では, 保存時にChange Mode +x'
""" はボツ

""---------------------------------------------------------------------------
""" tags

""" Current Dicrectoryにtags Fileが
""" 存在すれば保存時に更新

"" ctags
" if filereadable(expand('%:p:h') . '/tags') && executable('ctags')
if filewritable(expand('%:p:h') . '/tags') && executable('ctags')
    augroup ctagsupdate
        autocmd!
        autocmd BufWritePost * silent !ctags -R
    augroup END
endif

"" gtags
" if filereadable(expand('%:p:h') .'/GTAGS') && executable('gtags')
if filewritable(expand('%:p:h') .'/GTAGS') && executable('gtags')
    augroup gtagsupdate
        autocmd!
        autocmd BufWritePost * silent !gtags
    augroup END
endif

"---------------------------------------------------------------------------
""" Template
augroup templates
    autocmd!
    " autocmd BufNewFile *.c 0r ~/.auto-insert/template.c
    " autocmd BufNewFile *.h 0r ~/.auto-insert/template.h
    " autocmd BufNewFile *.cpp 0r ~/.auto-insert/template.cpp
    " autocmd BufNewFile *.hpp 0r ~/.auto-insert/template.hpp
    autocmd BufNewFile *.sh 0r ~/.auto-insert/template.sh
    autocmd BufNewFile *.pl 0r ~/.auto-insert/template.pl
    autocmd BufNewFile *.rb 0r ~/.auto-insert/template.rb
    autocmd BufNewFile *.py 0r ~/.auto-insert/template.py
    " autocmd BufNewFile *.tex 0r ~/.auto-insert/template.tex
    autocmd BufNewFile *.org 0r ~/.auto-insert/template.org
    autocmd BufNewFile *.md,*.mkd,*.mdt,*.mkdn,*.mdwn,*.mark,*.mdown,*.markdown 0r ~/.auto-insert/template.md
    autocmd BufNewFile *.bat 0r ~/.auto-insert/template.bat
augroup END

"---------------------------------------------------------------------------
""" 括弧の自動補完
" inoremap { {}<LEFT>
" inoremap ( ()<LEFT>
" inoremap [ []<LEFT>
" inoremap " ""<LEFT>
" inoremap ' ''<LEFT>
" vnoremap { "zdi^V{<C-R>z}<ESC>
" vnoremap ( "zdi^V(<C-R>z)<ESC>
" vnoremap [ "zdi^V[<C-R>z]<ESC>
" vnoremap " "zdi^V"<C-R>z^V"<ESC>
" vnoremap ' "zdi'<C-R>z'<ESC>

"---------------------------------------------------------------------------
""" Aspell/Ispell
"map :!aspell --lang=en -c %<CR>
"map :!aspell --lang=en -c %<CR>

"---------------------------------------------------------------------------
""" autodate
" Keyword (Default - pre="\cLast Change:" post="\.")
" ToDo - EmacsのようにSpaceがあっても有効になるようにする
let autodate_keyword_pre = "Last Modified: <"
let autodate_keyword_post = ">"
" let autodate_keyword_pre = "Last \%(Change\|Modified\):"
" let autodate_keyword_pre = "Last Modified:"
" let autodate_keyword_post = "."
"" Format
let autodate_format = "%Y/%m/%d %H:%M:%S %Z"
