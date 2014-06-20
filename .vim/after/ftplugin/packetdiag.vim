" if exists('b:did_my_ftplugin')
"   finish
" endif
" let b:did_my_ftplugin = 1

"---------------------------------------------------------------------------
compiler packetdiag

""" 保存後にMake
" if executable('packetdiag')
"     augroup packetmake
"         autocmd!
"         autocmd BufWritePost *.diag call PacketMake()
"     augroup END
" endif

function! PacketMake()
  if filewritable(expand('%:p:r') . '.png')
    silent make | redraw!
    " silent make png | redraw!
  endif
endfunction

"---------------------------------------------------------------------------
""" QuickRun
let g:quickrun_config['packetdiag'] = {
      \   'command': 'packetdiag',
      \   'exec': ['%c -a %s', 'open %s:r.png'],
      \   'outputter': 'message',
      \}
