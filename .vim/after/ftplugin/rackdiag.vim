" if exists('b:did_my_ftplugin')
"   finish
" endif
" let b:did_my_ftplugin = 1

"---------------------------------------------------------------------------
compiler rackdiag

""" 保存後にMake
" if executable('rackdiag')
"     augroup rackmake
"         autocmd!
"         autocmd BufWritePost *.diag call RackMake()
"     augroup END
" endif

function! RackMake()
  if filewritable(expand('%:p:r') . '.png')
    silent make | redraw!
    " silent make png | redraw!
  endif
endfunction

"---------------------------------------------------------------------------
""" QuickRun
let g:quickrun_config['rackdiag'] = {
      \   'command': 'rackdiag',
      \   'exec': ['%c -a %s', 'open %s:r.png'],
      \   'outputter': 'message',
      \}
