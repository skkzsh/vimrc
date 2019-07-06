"""" Bundle

"" File Typeの検出を無効
filetype off

"" Vundleを初期化して
"" Vundle自身もVundleで管理
" set runtimepath+=$AUTOINSTALL_VIM/bundle/vundle
" call vundle#rc($AUTOINSTALL_VIM . '/bundle')

"" Proxy対策
" let g:neobundle_default_git_protocol='https'

if has('vim_starting')
  set runtimepath+=$AUTOINSTALL_VIM/bundle/neobundle.vim
endif

call neobundle#begin($AUTOINSTALL_VIM . '/bundle')
"" expand('$AUTOINSTALL_VIM/bundle')

"---------------------------------------------------------------------------
NeoBundleFetch 'Shougo/neobundle.vim'
" NeoBundle 'gmarik/vundle'

if has('win32')
  let g:vimproc#download_windows_dll = 1
endif

NeoBundle 'Shougo/vimproc.vim', {
\   'build' : {
\     'mac' : 'make -f make_mac.mak',
\     'linux' : 'make',
\     'unix' : 'gmake',
\   },
\ }
"\     'windows' : 'tools\\update-dll-mingw',
"\     'cygwin' : 'make -f make_cygwin.mak',

"" Unite
" https://github.com/Shougo/unite.vim/wiki/unite-plugins
NeoBundle 'Shougo/unite.vim'
" NeoBundle 'Shougo/denite.nvim'
NeoBundle 'Shougo/neomru.vim'
NeoBundle 'thinca/vim-unite-history'
NeoBundle 'mattn/unite-gist'
NeoBundle 'tsukkee/unite-help'
NeoBundle 'tsukkee/unite-tag'
NeoBundle 'sgur/unite-git_grep'
NeoBundle 'sgur/unite-qf'
NeoBundle 'tacroe/unite-mark'
NeoBundle 'h1mesuke/unite-outline'
if executable('ack')
  NeoBundle 't9md/vim-unite-ack'
  NeoBundle 'mileszs/ack.vim'
endif
NeoBundle 'osyo-manga/unite-quickrun_config'
" NeoBundle 'osyo-manga/unite-quickfix'

"" neocomplcache
" NeoBundle 'Shougo/neocomplcache'
NeoBundle 'Shougo/neocomplete'
" NeoBundle 'Shougo/deoplete.nvim'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/neosnippet-snippets'
if executable('clang')
  NeoBundle 'Shougo/neocomplcache-clang'
endif
"" -- clangをInstall

NeoBundle 'Shougo/vimfiler'
" NeoBundle 'Shougo/defx.nvim'
NeoBundle 'Shougo/junkfile.vim'
NeoBundle 'Shougo/vimshell'
" NeoBundle 'Shougo/deol.nvim'

"" thinca
NeoBundle 'thinca/vim-quickrun'
NeoBundle 'thinca/vim-poslist'
NeoBundle 'thinca/vim-visualstar'
NeoBundle 'thinca/vim-ref'
NeoBundle 'thinca/vim-localrc'
" NeoBundle 'thinca/vim-guicolorscheme'

" NeoBundle 'mojako/ref-sources.vim'

"" mattn
NeoBundle 'mattn/excitetranslate-vim'
NeoBundle 'mattn/webapi-vim'
" NeoBundle 'mattn/emmet-vim'
" NeoBundle 'mattn/zencoding-vim'
" NeoBundle 'mattn/mkdpreview-vim'
" NeoBundle 'mattn/vimplenote-vim'
if executable('git')
  NeoBundle 'tpope/vim-fugitive'
  NeoBundle 'mattn/gist-vim'
  " NeoBundle 'lambdalisue/vim-gista'
endif

" osyo-manga
" NeoBundle 'osyo-manga/vim-anzu'
" NeoBundle 'osyo-manga/vim-over'

"" tpope
NeoBundle 'tpope/vim-surround'

"" Lokaltog
NeoBundle 'Lokaltog/vim-easymotion'
" NeoBundle 'Lokaltog/powerline'
" NeoBundle 'Lokaltog/vim-powerline'

" NeoBundle 'bling/vim-airline'
NeoBundle 'itchyny/lightline.vim'

" NeoBundle 'kakkyz81/evervim'
" NeoBundle 'mrtazz/simplenote.vim'

" color scheme
NeoBundleLazy 'xoria256.vim'

"" LSP
" NeoBundle 'prabirshrestha/vim-lsp'
" NeoBundle 'prabirshrestha/async.vim'
" NeoBundle 'prabirshrestha/asyncomplete.vim'
" NeoBundle 'prabirshrestha/asyncomplete-lsp.vim'

"" Web
" NeoBundle 'prettier/vim-prettier'

"" HTML

"" CSS
" NeoBundle 'CSS-one-line--multi-line-folding'
" NeoBundle 'JulesWang/css.vim'
"" CUIだと重くなるため
NeoBundleLazy 'skammer/vim-css-color'
" NeoBundle 'css_color.vim'
" NeoBundle 'css-color-preview.vim'

"" JavaScript
NeoBundle 'pangloss/vim-javascript'
" NeoBundle 'jelera/vim-javascript-syntax'
" NeoBundle 'moll/vim-node'

"" XML
" NeoBundle 'othree/xml.vim'
" NeoBundle 'sukima/xmledit'
" NeoBundle 'XML-Folding'

"" Perl
if executable('perl')
  " NeoBundle 'vim-perl/vim-perl'
  NeoBundle 'c9s/perlomni.vim'
  " NeoBundle 'c9s/cpan'
  " NeoBundle 'perl-support.vim'
endif

"" Python
if executable('python')
  NeoBundle 'hynek/vim-python-pep8-indent'
  " NeoBundle 'davidhalter/jedi-vim'
  " NeoBundle 'klen/python-mode'
  " NeoBundle 'python_fold'
  " NeoBundle 'nvie/vim-flakes8'
  " NeoBundle 'ryanolsonx/vim-lsp-python'
endif
" if executable('pyenv')
  " NeoBundle 'lambdalisue/vim-pyenv'
  " NeoBundleLazy 'lambdalisue/vim-pyenv', {
  " \ 'autoload': {
  " \   'filetypes': ['python', 'python3'],
  " \ 'depends': ['davidhalter/jedi-vim'],
  " \ }}
" endif

"" Ruby
if executable('ruby')
  " NeoBundle 'vim-ruby/vim-ruby'
  NeoBundle 'yuku-t/vim-ref-ri'
endif

"" golang
if executable('go')
  NeoBundle 'fatih/vim-go'
endif

"" Markdown
" NeoBundle 'tpope/vim-markdown'
NeoBundle 'hallison/vim-markdown'
" NeoBundle 'plasticboy/vim-markdown'
" NeoBundle 'suan/vim-instant-markdown'
" NeoBundle 'nelstrom/vim-markdown-folding'
" NeoBundle 'Markdown'

"" RST
" NeoBundle 'Rykka/riv.vim'
" NeoBundle 'nvie/vim-rst-tables'

"" Others
" if has('win32')
"   NeoBundle 'PProvost/vim-ps1'
" endif
NeoBundle 'sh.vim'
" NeoBundle 'Super-Shell-Indent'
" NeoBundle 'applescript.vim'
" NeoBundle 'c.vim'
" NeoBundle 'clang'
" NeoBundle 'clang_complete'

NeoBundle 'haya14busa/vim-migemo'
NeoBundle 'scrooloose/syntastic'
" Neobundle 'vim-browsereload-mac'
" NeoBundle 'nishigori/increment-activator'
NeoBundle 'vim-jp/vimdoc-ja'
" NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'tomtom/tcomment_vim'
NeoBundle 'matchit.zip'
" NeoBundle 'rhysd/clever-f.vim'
" NeoBundle 'taku-o/vim-batch-source'
" NeoBundle 'tyru/open-browser.vim'
if executable('gpg')
  NeoBundle 'jamessan/vim-gnupg'
endif
" NeoBundle 'wannesm/wmgraphviz.vim'
" NeoBundle 'vim-pandoc/vim-pandoc'
" NeoBundle 'jacquesbh/vim-showmarks'

" NeoBundle 'yuratomo/weather.vim'

if executable('ansible')
  NeoBundle 'chase/vim-ansible-yaml'
endif
if executable('terraform')
  NeoBundle 'hashivim/vim-terraform'
endif
if executable('w3m')
  NeoBundle 'yuratomo/w3m.vim'
endif
if executable('ctags')
  NeoBundle 'taglist.vim'
endif

" NeoBundle 'chrisbra/csv.vim'

" NeoBundle 'kien/ctrlp'
" textobj

" NeoBundle 'LeafCage/yankround.vim'
NeoBundle 'YankRing.vim'
" NeoBundle 'junegunn/vim-easy-align'
NeoBundle 'Align'
NeoBundle 'sudo.vim'
NeoBundle 'errormarker.vim'
" NeoBundle 'occur.vim'
" NeoBundle 'buftabs'
NeoBundle 'autodate.vim'
"" -- Kaoriya版以外には入っていないので

" NeoBundle 'git://vim-latex.git.sourceforge.net/gitroot/vim-latex/vim-latex'
" NeoBundle 'git://git.wincent.com/command-t.git'

" NeoBundle 'git@gitlab.com:skkzsh/vim-blockdiags.git'

"---------------------------------------------------------------------------
"" Emacs
let g:emacs_bundle = $HOME . '/.emacs.d/bundle'

if has('win32')
  NeoBundleFetch 'chuntaro/NTEmacs64', {
  \ 'base' : g:emacs_bundle,
  \ }
endif

" if executable('emacs')
"   NeoBundleFetch 'sellout/emacs-color-theme-solarized', {
"   \ 'base' : g:emacs_bundle,
"   \ }
" endif

unlet g:emacs_bundle

"" Bash
let g:bash_bundle = $HOME . '/.bash/bundle'
NeoBundleFetch 'seebi/dircolors-solarized', {
\ 'base' : g:bash_bundle,
\ }

if has('win32unix')

  NeoBundleFetch 'joelthelion/autojump', '20.9', {
  \ 'base' : g:bash_bundle,
  \ }
"  \ 'build' : {
"  \   'windows' : './install.sh',
"  \   },

   NeoBundleFetch 'rupa/z', {
   \ 'base' : g:bash_bundle,
   \ }

"  NeoBundleFetch 'nurse/nkf', {
"  NeoBundleFetch 'https://scm.osdn.jp/gitroot/nkf/nkf.git', {
"  \ 'base' : g:bash_bundle,
"  \ }
" \   'build' : {
" \     'windows' : 'make',
" \   },

  NeoBundleFetch 'funtoo/keychain', {
  \ 'base' : g:bash_bundle,
  \ }
" \   'build' : {
" \     'windows' : 'make',
" \   },

  NeoBundleFetch 'daveewart/colordiff', {
  \ 'base' : g:bash_bundle,
  \ }
" \   'build' : {
" \     'windows' : 'make',
" \   },

endif

unlet g:bash_bundle

"" Zsh
if executable('zsh')
  let g:zsh_bundle = $HOME . '/.zsh/bundle'

  NeoBundleFetch 'zplug/zplug', {
  \ 'base' : g:zsh_bundle,
  \ }
  " NeoBundleFetch 'zsh-users/antigen', {
  " \ 'base' : g:zsh_bundle,
  " \ }
  NeoBundleFetch 'robbyrussell/oh-my-zsh', {
  \ 'base' : g:zsh_bundle,
  \ }
  " NeoBundleFetch 'sorin-ionescu/prezto', {
  " \ 'base' : g:zsh_bundle,
  " \ }
  NeoBundleFetch 'grml/zsh-lovers', {
  \ 'base' : g:zsh_bundle,
  \ }
  NeoBundleFetch 'hchbaw/auto-fu.zsh', {
  \ 'base' : g:zsh_bundle,
  \ }

  " NeoBundleFetch 'zsh-users/zsh-completions', {
  " \ 'base' : g:zsh_bundle,
  " \ }

  if has('win32unix')
    " NeoBundleFetch 'zsh-users/zsh-syntax-highlighting', {
    " \ 'base' : g:zsh_bundle,
    " \ }
    NeoBundleFetch 'zsh-users/zaw', {
    \ 'base' : g:zsh_bundle,
    \ }
  endif

  unlet g:zsh_bundle
endif

"---------------------------------------------------------------------------
call neobundle#end()

"" File Type検出, Plugin, IndentをON
filetype plugin indent on

"" Installation Check
NeoBundleCheck

"---------------------------------------------------------------------------
"""" Install clang
"" llvm, clang, compiler-rtをDownload (or svn)
"" Directoryをそれぞれllvm, clang, compiler-rtにRename
"" llvm下のtoolsにclang, projectにcompiler-rtをmv
"" llvmと同階層にmkdir buildしてcd build
"" ../llvm/configure --enable-optimized
"" make -j2  # -jの後の数だけ並列
"" sudo [paco -p llvm-clang] make install
