" if exists('b:did_my_ftplugin')
"   finish
" endif
" let b:did_my_ftplugin = 1

"---------------------------------------------------------------------------
compiler seqdiag

""" 保存後にMake
" if executable('seqdiag')
"     augroup seqmake
"         autocmd!
"         autocmd BufWritePost *.diag call SeqMake()
"     augroup END
" endif

function! SeqMake()
  if filewritable(expand('%:p:r') . '.png')
    silent make | redraw!
    " silent make png | redraw!
  endif
endfunction

"---------------------------------------------------------------------------
""" QuickRun
let g:quickrun_config['seqdiag'] = {
      \   'command': 'seqdiag',
      \   'exec': ['%c -a %s', 'open %s:r.png'],
      \   'outputter': 'message',
      \}
