"" Basic Settings by Plugins

"---------------------------------------------------------------------------
""" VimShell
"let g:VimShell_EnableInteractive = 1

"---------------------------------------------------------------------------
""" Error Marker
let g:errormarker_errortext = '!!'
let g:errormarker_warningtext = '??'
let g:errormarker_errorgroup = 'Error'
let g:errormarker_warninggroup = 'Todo'
if has('win32')
  let g:errormarker_erroricon = expand('~/.vim/signs/err.bmp')
  let g:errormarker_warningicon = expand('~/.vim/signs/warn.bmp')
else
  let g:errormarker_erroricon = expand('~/.vim/signs/err.png')
  let g:errormarker_warningicon = expand('~/.vim/signs/warn.png')
endif

"---------------------------------------------------------------------------
"" Ansible
let g:ansible_options = {'documentation_mapping': '<C-K>'}

"---------------------------------------------------------------------------
""" localrc
"" 最初に読み込むlocalrc, .first.vimrcを定義
"" SyntaxCheckやShebangChmodXなどのautocmdを
"" 抑制するための変数を定義したりするのに使う予定
"" TODO
augroup firstlocalrc
  autocmd!
  autocmd BufRead,BufNew * call localrc#load('.first.vimrc', expand('%:p:h'))
augroup END

"---------------------------------------------------------------------------
" Junk File
let g:junkfile#directory = $HOME . '/.junk' . strftime('/%y')
noremap ,jl :Junk local<CR>
noremap ,jd :Junk dropbox<CR>

"---------------------------------------------------------------------------
""" QFixHowm
