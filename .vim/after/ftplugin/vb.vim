" if exists('b:did_my_ftplugin')
"   finish
" endif
" let b:did_my_ftplugin = 1

"---------------------------------------------------------------------------
"" Encode
setlocal fileencoding=cp932
" setlocal fileencodings=

"" 改行Code
setlocal fileformat=dos
" setlocal fileformats=

compiler dosbatch
" compiler wscript
" compiler cscript

""" QuickRun
" let g:quickrun_config['dosbatch'] = {
" \ }

"" 実行
map <F5> :!%<CR>
" map <F5> :!wscript %<CR>
" map <F5> :!cscript %<CR>
