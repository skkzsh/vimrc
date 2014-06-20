" if exists('b:did_my_ftplugin')
"   finish
" endif
" let b:did_my_ftplugin = 1

"---------------------------------------------------------------------------
compiler blockdiag

""" 保存後にMake
" if executable('blockdiag')
"     augroup blockmake
"         autocmd!
"         autocmd BufWritePost *.diag call BlockMake()
"     augroup END
" endif

function! BlockMake()
  if filewritable(expand('%:p:r') . '.png')
    silent make | redraw!
    " silent make png | redraw!
  endif
endfunction

"---------------------------------------------------------------------------
""" QuickRun
let g:quickrun_config['blockdiag'] = {
      \   'command': 'blockdiag',
      \   'exec': ['%c -a %s', 'open %s:r.png'],
      \   'outputter': 'message',
      \}
