" syn keyword dosbatchMyTodo contained  TODO FIXME NOTE
"
" syn match dosbatchMyComment "^rem\($\|\s.*$\)"lc=3 contains=dosbatchMyTodo
" syn match dosbatchMyComment "^@rem\($\|\s.*$\)"lc=4 contains=dosbatchMyTodo
" syn match dosbatchMyComment "\srem\($\|\s.*$\)"lc=4 contains=dosbatchMyTodo
" syn match dosbatchMyComment "\s@rem\($\|\s.*$\)"lc=5 contains=dosbatchMyTodo
" syn match dosbatchMyComment "\s*:\s*:.*$" contains=dosbatchMyTodo
"
" " Comments in ()'s - still to handle spaces before rem
" syn match dosbatchMyComment "(rem\([^)]\|\^\@<=)\)*"lc=4 contains=dosbatchMyTodo
"
" HiLink dosbatchMyTodo   Todo
" HiLink dosbatchComment	Comment
