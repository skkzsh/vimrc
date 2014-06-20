" if exists('b:did_my_ftplugin')
"   finish
" endif
" let b:did_my_ftplugin = 1

"---------------------------------------------------------------------------
compiler nwdiag

""" 保存後にMake
" if executable('nwdiag')
"     augroup nwmake
"         autocmd!
"         autocmd BufWritePost *.diag call NwMake()
"     augroup END
" endif

function! NwMake()
  if filewritable(expand('%:p:r') . '.png')
    silent make | redraw!
    " silent make png | redraw!
  endif
endfunction

"---------------------------------------------------------------------------
""" QuickRun
let g:quickrun_config['nwdiag'] = {
      \   'command': 'nwdiag',
      \   'exec': ['%c -a %s', 'open %s:r.png'],
      \   'outputter': 'message',
      \}
