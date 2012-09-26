" syn keyword ps1CommentTodo HOGE FUGA contained
" syn match MyComment /#.*/ contains=MyTodo
" syn region MyComment start="<#" end="#>" contains=MyTodo
" if version >= 508 || !exists("did_ps1_syn_inits")
" 	if version < 508
" 		let did_ps1_syn_inits = 1
" 		command -nargs=+ HiLink hi link <args>
" 	else
" 		command -nargs=+ HiLink hi def link <args>
" 	endif
"     HiLink MyTodo Todo
" 	delcommand HiLink
" endif

" syn match mytodo contained "\<\(HOGE\|FUGA\):"
" hi def link myTodo Todo


" syntax match myMemo /MEMO/ containedin=.*Comment.* contained
" syntax match myModo /MEMO/ containedin=ALL
" highlight default link myMemo Todo


" au BufReadCmd   *.epub      call zip#Browse(expand("<amatch>"))
