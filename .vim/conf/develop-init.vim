"" Develop Settings

"---------------------------------------------------------------------------
"" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_mode_map = {
\ 'mode': 'active',
\ 'active_filetypes': ['html', 'xhtml', 'xml', 'css', 'json',
\ 'dockerfile', 'javascript', 'sql'],
\ 'passive_filetypes': ['vim', 'yaml', 'ansible', 'rst',
\ 'sh', 'zsh', 'perl', 'ruby', 'python', 'java', 'c', 'cpp'],
\ }

if executable('shellcheck')
  let g:syntastic_sh_checkers = ['shellcheck']
endif
if executable('vint')
  let g:syntastic_vim_checkers = ['vint']
endif
if executable('yamllint')
  let g:syntastic_yaml_checkers = ['yamllint']
endif
if executable('hadolint')
  let g:syntastic_dockerfile_checkers = ['hadolint']
endif

"---------------------------------------------------------------------------
"" LSP
" let g:lsp_signs_enabled = 1
" let g:lsp_diagnostics_echo_cursor = 1
" let g:lsp_signs_error = {'text': '✗'}
" let g:lsp_signs_warning = {'text': '‼'}

" if executable('solargraph')
"   " gem install solargraph
"   au User lsp_setup call lsp#register_server({
"   \ 'name': 'solargraph',
"   \ 'cmd': {server_info->[&shell, &shellcmdflag, 'solargraph stdio']},
"   \ 'initialization_options': {"diagnostics": "true"},
"   \ 'whitelist': ['ruby'],
"   \ })
" endif

" if executable('pyls')
"   au User lsp_setup call lsp#register_server({
"   \ 'name': 'pyls',
"   \ 'cmd': {server_info->['pyls']},
"   \ 'whitelist': ['python'],
"   \ })
" endif

"---------------------------------------------------------------------------
"" Git gutter
set signcolumn=yes
" set updatetime=100

augroup gitgutterupdate
  autocmd!
  autocmd BufWritePost * GitGutter
augroup END

" let g:gitgutter_enabled = 0
let g:gitgutter_map_keys = 0
" let g:gitgutter_override_sign_column_highlight = 0

" let g:gitgutter_sign_added = 'xx'
" let g:gitgutter_sign_modified = 'yy'
" let g:gitgutter_sign_removed = 'zz'
" let g:gitgutter_sign_removed_first_line = '^^'
" let g:gitgutter_sign_modified_removed = 'ww'

highlight GitGutterAdd    ctermfg=2 ctermbg=NONE
highlight GitGutterChange ctermfg=3 ctermbg=NONE
highlight GitGutterDelete ctermfg=1 ctermbg=NONE
" highlight link GitGutterChangeLine DiffText
