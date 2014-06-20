"" Auto Motion Settings

"---------------------------------------------------------------------------
""" Bufferに入った時に, そのFileのあるDirectoryを
""" Current Directoryにする
""" (Directoryが存在すれば)
augroup grlcd
  autocmd!
  autocmd BufEnter * call GrLcd()
  " autocmd BufEnter * lcd %:p:h
augroup END

"" XXX : gist-vimでPullしたBufferに入るときのError回避
"" 以下でOK?
"" Directoryが存在すれば, それをCurrent Directoryにする
function! GrLcd()
  if isdirectory(expand('%:p:h'))
    lcd %:p:h
  endif
endfunction

"---------------------------------------------------------------------------
""" Quickfix Windowsを自動で開く
augroup autoquickfix
  autocmd!
  autocmd QuickFixCmdPost make,vimgrep,grep,helpgrep cwindow
augroup END

"---------------------------------------------------------------------------
""" 自動でRead Only
augroup autoreadonly
  autocmd!
  autocmd BufRead,BufNew Changelog*,*.log,*.aux,*.bbl,*.blg set readonly
augroup END
