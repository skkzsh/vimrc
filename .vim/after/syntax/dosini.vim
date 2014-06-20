" syn region dosiniSection start="^\[" end="\(\n\+\[\)\@=" contains=dosiniLabel,dosiniHeader,dosiniComment keepend fold
" setlocal foldmethod=syntax
"" Following opens all folds (remove line to start with folds closed).
" setlocal foldlevel=20

syn keyword dosiniMyTodo  contained TODO FIXME XXX NOTE

syn match dosiniMyComment "^[#;].*$" contains=dosiniMyTodo

if version >= 508
  command -nargs=+ HiLink hi def link <args>

  HiLink dosiniMyComment  Comment
  HiLink dosiniMyTodo  Todo

  delcommand HiLink
endif
