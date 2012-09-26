if exists('b:did_my_ftplugin')
    finish
endif
let b:did_my_ftplugin = 1

compiler dot

""" 保存後にMake
""" ただし, localrc等でb:nodotmakeを非0に定義すれば抑制可
if executable('dot')
    augroup dotmake
        autocmd!
        autocmd BufWritePost *.dot call DotMake()
    augroup END
endif

function! DotMake()
    if !(exists('b:nodotmake') && b:nodotmake != 0)
        silent make png
        " silent make png | redraw!
    endif
endfunction

""" QuickRun
" let g:quickrun_config['dot'] = {
" \   'command': 'dot',
" \   'exec': ['%c -Tpng %s -o %s:r.png', 'open %s:r.png'],
" \   'outputter': 'message',
" \}
