"---------------------------------------------------------------------------
" Junk File
"Open junk file."{{{
command! -nargs=0 JunkFile call s:open_junk_file()

function! s:open_junk_file()
    let l:junk_dir = $HOME . '/.junk'. strftime('/%y')
    if !isdirectory(l:junk_dir)
        call mkdir(l:junk_dir, 'p')
    endif

    let l:filename = input('Junk Code: ', l:junk_dir . strftime('/%m%d-%H%M%S.'))
    if l:filename != ''
        execute 'edit ' . l:filename
    endif
endfunction"}}}

"---------------------------------------------------------------------------
" Junk File
" See ref.vim
"Open junk file."{{{

" noremap ,jl :Junk local<CR>
" noremap ,jd :Junk drop<CR>

command! -nargs=? -complete=customlist,s:junk_comp 
            \ Junk call s:_open_junk_file(<q-args>)

" FIXME: Right?
function! s:junk_comp(lead, cmd, pos) "{{{
    return ['local', 'drop']
endfunction"}}}

" Argumentsが
" なし,またはloalであればLocalに
" dropであればDropboxに
" JunkFileを作る
" FIXME: Right?
function! s:_open_junk_file(args) "{{{
    if len(a:args) == 0 || a:args == 'local'
        call s:open_junk_file($HOME . '/.junk'. strftime('/%y'),
                    \ strftime('%m%d-%H%M%S.'))

    elseif a:args == 'drop'
        if has('win32')
            let l:prefix = $USERPROFILE
        else
            let l:prefix = $HOME
        endif
        call s:open_junk_file($HOME . '/Dropbox/.junk'. strftime('/%y'),
                    \ strftime('%m%d-%H%M%S.'))

    else
        echohl ErrorMsg
        echomsg 'Invalid Arguments.'
        echohl None
    endif
endfunction"

function! s:open_junk_file(dir, file)
    let l:junk_dir = a:dir
    if !isdirectory(l:junk_dir)
        call mkdir(l:junk_dir, 'p')
    endif

    let l:filename = input('Junk Code: ', l:junk_dir . '/'. a:file)
    if l:filename != ''
        execute 'edit ' . l:filename
    endif
endfunction"}}}
