"""" Bundle

"" File Typeの検出を無効
filetype off

"" Vundleを初期化して
"" Vundle自身もVundleで管理
set runtimepath+=$AUTOINSTALL_VIM/bundle/vundle
call vundle#rc($AUTOINSTALL_VIM . '/bundle')

"" Proxy対策
" let g:neobundle_default_git_protocol='https'

if has('vim_starting')
  set runtimepath+=$AUTOINSTALL_VIM/bundle/neobundle.vim
endif

call neobundle#begin($AUTOINSTALL_VIM . '/bundle')
"" expand('$AUTOINSTALL_VIM/bundle')

"---------------------------------------------------------------------------
NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'gmarik/vundle'

"" Unite
" https://github.com/Shougo/unite.vim/wiki/unite-plugins
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neomru.vim'
NeoBundle 'thinca/vim-unite-history'
NeoBundle 'mattn/unite-gist'
NeoBundle 'tsukkee/unite-help'
NeoBundle 'tsukkee/unite-tag'
NeoBundle 'sgur/unite-git_grep'
NeoBundle 'sgur/unite-qf'
NeoBundle 'tacroe/unite-mark'
NeoBundle 'h1mesuke/unite-outline'
NeoBundle 't9md/vim-unite-ack'
NeoBundle 'osyo-manga/unite-quickrun_config'
" NeoBundle 'osyo-manga/unite-quickfix'

"" neocomplcache
NeoBundle 'Shougo/neocomplcache'
" NeoBundle 'Shougo/neocomplete'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'Shougo/neocomplcache-clang'
"" -- clangをInstall

NeoBundle 'Shougo/vimfiler'
NeoBundle 'Shougo/junkfile.vim'
NeoBundle 'Shougo/vimshell'
" NeoBundle 'Shougo/nyaos'

if !(has('win32'))
  NeoBundle 'Shougo/vimproc.vim', {
\   'build' : {
\     'windows' : 'tools\\update-dll-mingw',
\     'cygwin' : 'make -f make_cygwin.mak',
\     'mac' : 'make -f make_mac.mak',
\     'linux' : 'make',
\     'unix' : 'gmake',
\   },
\ }
endif

"" Make する
"" TODO : NeoBundleで自動化?

"" thinca
NeoBundle 'thinca/vim-quickrun'
NeoBundle 'thinca/vim-poslist'
NeoBundle 'thinca/vim-visualstar'
NeoBundle 'thinca/vim-ref'
NeoBundle 'thinca/vim-localrc'
" NeoBundle 'thinca/vim-guicolorscheme'

"" mattn
NeoBundle 'mattn/excitetranslate-vim'
NeoBundle 'mattn/webapi-vim'
" NeoBundle 'mattn/emmet-vim'
" NeoBundle 'mattn/zencoding-vim'
" NeoBundle 'mattn/mkdpreview-vim'
" NeoBundle 'mattn/vimplenote-vim'
if executable('git')
  NeoBundle 'mattn/gist-vim'
endif

" osyo-manga
" NeoBundle 'osyo-manga/vim-anzu'
" NeoBundle 'osyo-manga/vim-over'

"" tpope
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'tpope/vim-surround'

"" Lokaltog
NeoBundle 'Lokaltog/vim-easymotion'
" NeoBundle 'Lokaltog/powerline'
" NeoBundle 'Lokaltog/vim-powerline'

NeoBundle 'bling/vim-airline'
" NeoBundle 'itchyny/lightline.vim'

" NeoBundle 'kakkyz81/evervim'
" NeoBundle 'mrtazz/simplenote.vim'

"" HTML

"" CSS
" NeoBundle 'CSS-one-line--multi-line-folding'
" NeoBundle 'JulesWang/css.vim'
"" CUIだと重くなるため
NeoBundleLazy 'skammer/vim-css-color'
" NeoBundle 'css_color.vim'
" NeoBundle 'css-color-preview.vim'

"" JavaScript
" NeoBundle 'jshint'
" NeoBundle 'gjslint'
" NeoBundle 'hallettj/jslint.vim'
" NeoBandle 'pangloss/vim-javascript'
" NeoBundle 'JavaScript-syntax'
" NeoBundle 'Javascript-Indentation'

"" XML
" NeoBundle 'othree/xml.vim'
" NeoBundle 'sukima/xmledit'
" NeoBundle 'XML-Folding'

"" Perl
" NeoBundle 'vim-perl/vim-perl'
NeoBundle 'c9s/perlomni.vim'
" NeoBundle 'c9s/cpan'
" NeoBundle 'perl-support.vim'

"" Python
" NeoBundle 'klen/python-mode'
" NeoBundle 'python_fold'
" NeoBundle 'nvie/vim-flakes8'

"" Ruby
" NeoBundle 'vim-ruby/vim-ruby'
NeoBundle 'yuku-t/vim-ref-ri'

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
NeoBundle 'elzr/vim-json'
NeoBundle 'PProvost/vim-ps1'
NeoBundle 'sh.vim'
" NeoBundle 'Super-Shell-Indent'
" NeoBundle 'applescript.vim'
" NeoBundle 'c.vim'
" NeoBundle 'clang'
" NeoBundle 'clang_complete'

NeoBundle 'scrooloose/syntastic'
" Neobundle 'vim-browsereload-mac'
" NeoBundle 'nishigori/increment-activator'
NeoBundle 'vim-jp/vimdoc-ja'
" NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'tomtom/tcomment_vim'
NeoBundle 'tsaleh/vim-matchit'
" NeoBundle 'rhysd/clever-f.vim'
" NeoBundle 'taku-o/vim-batch-source'
NeoBundle 'tyru/open-browser.vim'
NeoBundle 'jamessan/vim-gnupg'
NeoBundle 'mileszs/ack.vim'
" NeoBundle 'wannesm/wmgraphviz.vim'
" NeoBundle 'vim-pandoc/vim-pandoc'
" NeoBundle 'jacquesbh/vim-showmarks'

" NeoBundle 'yuratomo/weather.vim'

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

NeoBundle 'git@bitbucket.org:skkzsh/vim-blockdiags.git'

"---------------------------------------------------------------------------
"" Emacs
let g:emacs_bundle = $HOME . '/.emacs.d/bundle'
NeoBundleFetch 'capitaomorte/yasnippet', {
\ 'base' : g:emacs_bundle,
\ }
NeoBundleFetch 'jlr/rainbow-delimiters', {
\ 'base' : g:emacs_bundle,
\ }
NeoBundleFetch 'magit/magit', '1.2.2', {
\ 'base' : g:emacs_bundle,
\ 'build' : {
\   'windows' : 'make',
\   'cygwin'  : 'make',
\   'mac'     : 'make',
\   'unix'    : 'make',
\   },
\ }
NeoBundleFetch 'purcell/exec-path-from-shell', {
\ 'base' : g:emacs_bundle,
\ }
NeoBundleFetch 'winterTTr/ace-jump-mode', {
\ 'base' : $EMACS_BUNDLE,
\ }
NeoBundleFetch 'yoshiki/yaml-mode', {
\ 'base' : g:emacs_bundle,
\ 'build' : {
\   'cygwin'  : 'make',
\   'mac'     : 'make',
\   'linux'   : 'make',
\   'unix'    : 'make',
\   },
\ }
NeoBundleFetch 'sellout/emacs-color-theme-solarized', {
\ 'base' : g:emacs_bundle,
\ }
NeoBundleFetch 'knu/elscreen', {
\ 'base' : g:emacs_bundle,
\ }
NeoBundleFetch 'eschulte/org-S5', {
\ 'base' : g:emacs_bundle,
\ }
NeoBundleFetch 'maple/emacsfiles', {
\ 'base' : g:emacs_bundle,
\ }
NeoBundleFetch 'kiwanami/emacs-calfw', {
\ 'base' : g:emacs_bundle,
\ }
NeoBundleFetch 'tequilasunset/auto-complete-latex-light', {
\ 'base' : g:emacs_bundle,
\ }
" NeoBundleFetch 'bruceravel/gnuplot-mode', {
" \ 'base' : g:emacs_bundle,
" \ }
NeoBundleFetch 'git://orgmode.org/org-mode.git', {
\ 'base' : g:emacs_bundle,
\ 'build' : {
\   'windows' : 'make',
\   'cygwin'  : 'make',
\   'mac'     : 'make',
\   'linux'   : 'make',
\   'unix'    : 'make',
\   },
\ }
NeoBundleFetch 'git://jblevins.org/git/markdown-mode.git', {
\ 'base' : g:emacs_bundle,
\ }

NeoBundleFetch 'http://git.chise.org/git/elisp/apel.git', {
\ 'base' : g:emacs_bundle,
\ }
NeoBundleFetch 'http://git.chise.org/git/elisp/flim.git', {
\ 'base' : g:emacs_bundle,
\ }
NeoBundleFetch 'http://git.chise.org/git/elisp/semi.git', {
\ 'base' : g:emacs_bundle,
\ }
NeoBundleFetch 'wanderlust/wanderlust', {
\ 'base' : g:emacs_bundle,
\ }

if executable('hg')
  NeoBundleFetch 'http://www.yatex.org/hgrepos/yatex', {
  \ 'type' : 'hg',
  \ 'name' : 'yatex',
  \ 'base' : g:emacs_bundle,
  \ }
endif

if executable('svn')
  NeoBundleFetch 'http://svn.coderepos.org/share/lang/elisp/anything-c-moccur', {
  \ 'base' : g:emacs_bundle,
  \ }
  NeoBundleFetch 'http://emacs-evernote-mode.googlecode.com/svn/trunk', {
  \ 'name' : 'evernote-mode',
  \ 'base' : g:emacs_bundle,
  \ }
endif

"" Bash
let g:bash_bundle = $HOME . '/.bash/bundle'
NeoBundleFetch 'seebi/dircolors-solarized', {
\ 'base' : g:bash_bundle,
\ }

"" Zsh
if executable('zsh')
  let g:zsh_bundle = $HOME . '/.zsh/bundle'

  NeoBundleFetch 'zsh-users/antigen', {
  \ 'base' : g:zsh_bundle,
  \ }
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
  " NeoBundleFetch 'zsh-users/zsh-syntax-highlighting', {
  " \ 'base' : g:zsh_bundle,
  " \ }
  " NeoBundleFetch 'zsh-users/zaw', {
  " \ 'base' : g:zsh_bundle,
  " \ }

  unlet g:zsh_bundle
endif

unlet g:emacs_bundle g:bash_bundle
"" $EMACS_BUNDLE

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
