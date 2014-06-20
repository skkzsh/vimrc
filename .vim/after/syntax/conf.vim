syn keyword confMyTodo  contained TODO FIXME XXX NOTE
" syn match confMyTodo "NOTE"

syn match confMyComment "^#.*" contains=confMyTodo
syn match confMyComment "\s#.*"ms=s+1 contains=confMyTodo

hi def link confMyComment Comment
hi def link confMyTodo  Todo
