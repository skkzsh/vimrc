" syn keyword vimMyTodo contained COMBAK FIXME TODO XXX NOTE
" syn cluster vimMyCommentGroup contains=vimMyTodo,@Spell
"
" syn match vimMyCommentTitle '"\s*\%([sS]:\|\h\w*#\)\=\u\w*\(\s\+\u\w*\)*:'hs=s+1  contained contains=vimMyTodo
"
" hi def link vimMyTodo Todo
