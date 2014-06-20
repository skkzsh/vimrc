" if exists('b:did_my_ftplugin')
"   finish
" endif
" let b:did_my_ftplugin = 1

"---------------------------------------------------------------------------
compiler actdiag

""" 保存後にMake
" if executable('actdiag')
"     augroup actmake
"         autocmd!
"         autocmd BufWritePost *.diag call ActMake()
"     augroup END
" endif

function! ActMake()
  if filewritable(expand('%:p:r') . '.png')
    silent make | redraw!
    " silent make png | redraw!
  endif
endfunction

"---------------------------------------------------------------------------
""" QuickRun
let g:quickrun_config['actdiag'] = {
      \   'command': 'actdiag',
      \   'exec': ['%c -a %s', 'open %s:r.png'],
      \   'outputter': 'message',
      \}
