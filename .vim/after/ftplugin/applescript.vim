" if exists('b:did_my_ftplugin')
"   finish
" endif
" let b:did_my_ftplugin = 1

"---------------------------------------------------------------------------
compiler osascript

"---------------------------------------------------------------------------
""" QuickRun
let g:quickrun_config['applescript'] = {
      \      'command': 'osascript',
      \      'outputter': 'null',
      \ }
