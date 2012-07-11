"---------------------------------------------------------------------------
""" Gist (See README)
if has('mac')
    let g:gist_clip_command = 'pbcopy'
elseif has('unix')
    let g:gist_clip_command = 'xclip -selection clipboard'
endif
let g:gist_detect_filetype = 1

"---------------------------------------------------------------------------
""" w3m (See README)
let g:w3m#homepage = "http://www.google.co.jp"
" let g:w3m#homepage = "http://www.yahoo.co.jp"
" let g:w3m#homepage = "http://www.hatena.ne.jp"
"
let g:w3m#external_browser = 'opera'
let g:w3m#hit_a_hint_key = 'f'
let g:w3m#search_engine =
            \ 'https://www.google.co.jp/search?sourceid=navclient&hl=ja&q='
"" Default
" http://search.yahoo.co.jp/search?search.x=1&fr=top_ga1_sa_124&tid=top_ga1_sa_124&ei=' . &encoding . '&aq=&oq=&p=
