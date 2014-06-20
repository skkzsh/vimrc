"" Auto Edit Settings

"---------------------------------------------------------------------------
""" 該当するShebangがあれば, 保存時にChange Mode +x
""" ただし, b:noshebangchmodxを非0に定義すれば抑制可
if executable('chmod')
  augroup shebangchmodx
    autocmd!
    autocmd BufWritePost * call ShebangChmodX()
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
      silent !chmod +x %
      " | redraw!
    endif
  endif
endfunction

""---------------------------------------------------------------------------
""" tags

""" Current Dicrectoryにtags Fileが
""" 存在すれば保存時に更新
""" XXX : silent redraw!が必要? 場所は?

"" ctags
" FIXME : Versionによって挙動が異なる
if has('unix') && executable('ctags')
  augroup ctagsupdate
    autocmd!
    autocmd BufWritePost * call CtagsUpdate()
  augroup END
endif

function! CtagsUpdate()
  if filewritable(expand('%:p:h') . '/tags')
    silent !ctags -R
    " | redraw!
  endif
endfunction

"" gtags
if executable('gtags')
  augroup gtagsupdate
    autocmd!
    autocmd BufWritePost * call GtagsUpdate()
  augroup END
endif

function! GtagsUpdate()
  if filewritable(expand('%:p:h') . '/GTAGS')
    silent !gtags
    " | redraw!
  endif
endfunction

"---------------------------------------------------------------------------
""" Templates
"" FIXME : Interactive, Unite (今は必ずInsertされてしまう! )
augroup templates
  autocmd!
  " autocmd BufNewFile *.c 0r ~/.auto-insert/template.c
  " autocmd BufNewFile *.h 0r ~/.auto-insert/template.h
  " autocmd BufNewFile *.cpp 0r ~/.auto-insert/template.cpp
  " autocmd BufNewFile *.hpp 0r ~/.auto-insert/template.hpp
  " autocmd BufNewFile [mM]akefie,*.mk,*.mak,*.dsp" 0r ~/.auto-insert/template.mak
  autocmd BufNewFile *.sh 0r ~/.auto-insert/template.sh
  autocmd BufNewFile *.pl 0r ~/.auto-insert/template.pl
  autocmd BufNewFile *.rb 0r ~/.auto-insert/template.rb
  autocmd BufNewFile *.py 0r ~/.auto-insert/template.py
  " autocmd BufNewFile *.tex 0r ~/.auto-insert/template.tex
  autocmd BufNewFile *.org 0r ~/.auto-insert/template.org
  autocmd BufNewFile *.md,*.mkd,*.mdt,*.mkdn,*.mdwn,*.mark,*.mdown,*.markdown 0r ~/.auto-insert/template.md
  autocmd BufNewFile *.ps1 0r ~/.auto-insert/template.ps1
  autocmd BufNewFile *.bat 0r ~/.auto-insert/template.bat
  autocmd BufNewFile *.dot 0r ~/.auto-insert/template.dot
augroup END

" function!
" input()
" if
" endif
" endfunction
