"""" Bundle

"" File Typeの検出を無効
filetype off

"" Vundleを初期化して
"" Vundle自身もVundleで管理
set rtp+=$DOT_VIM/bundle/vundle/
call vundle#rc('$DOT_VIM/bundle')

"" Proxy対策
" let g:neobundle_default_git_protocol='https'

if has('vim_starting')
  set runtimepath+=$DOT_VIM/bundle/neobundle.vim
endif

call neobundle#rc(expand('$DOT_VIM/bundle'))

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

NeoBundle 'Shougo/vimproc', {
\ 'build' : {
\   'windows' : 'make -f make_mingw32.mak',
\   'cygwin'  : 'make -f make_cygwin.mak',
\   'mac'     : 'make -f make_mac.mak',
\   'unix'    : 'make -f make_unix.mak',
\   },
\ }
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
let $EMACS_BUNDLE = expand('$HOME/.emacs.d/bundle')
" NeoBundleFetch 'capitaomorte/yasnippet', {
" \ 'base' : $EMACS_BUNDLE,
" \ }
NeoBundleFetch 'capitaomorte/yasnippet', '0.8.0', {
\ 'base' : $EMACS_BUNDLE,
\ }
NeoBundleFetch 'jlr/rainbow-delimiters', {
\ 'base' : $EMACS_BUNDLE,
\ }
" NeoBundleFetch 'magit/magit', {
" \ 'base' : $EMACS_BUNDLE,
" \ 'build' : {
" \   'windows' : 'make',
" \   'cygwin'  : 'make',
" \   'mac'     : 'make',
" \   'unix'    : 'make',
" \   },
" \}
NeoBundleFetch 'magit/magit', 'maint', {
\ 'base' : $EMACS_BUNDLE,
\ 'build' : {
\   'windows' : 'make',
\   'cygwin'  : 'make',
\   'mac'     : 'make',
\   'unix'    : 'make',
\   },
\ }
NeoBundleFetch 'purcell/exec-path-from-shell', {
\ 'base' : $EMACS_BUNDLE,
\ }
NeoBundleFetch 'winterTTr/ace-jump-mode', {
\ 'base' : $EMACS_BUNDLE,
\ }
NeoBundleFetch 'yoshiki/yaml-mode', {
\ 'base' : $EMACS_BUNDLE,
\ }
NeoBundleFetch 'sellout/emacs-color-theme-solarized', {
\ 'base' : $EMACS_BUNDLE,
\ }
NeoBundleFetch 'knu/elscreen', {
\ 'base' : $EMACS_BUNDLE,
\ }
NeoBundleFetch 'eschulte/org-S5', {
\ 'base' : $EMACS_BUNDLE,
\ }
NeoBundleFetch 'maple/emacsfiles', {
\ 'base' : $EMACS_BUNDLE,
\ }
NeoBundleFetch 'kiwanami/emacs-calfw', {
\ 'base' : $EMACS_BUNDLE,
\ }
NeoBundleFetch 'tequilasunset/auto-complete-latex-light', {
\ 'base' : $EMACS_BUNDLE,
\ }
NeoBundleFetch 'git://orgmode.org/org-mode.git', {
\ 'base' : $EMACS_BUNDLE,
\ 'build' : {
\   'windows' : 'make',
\   'cygwin'  : 'make',
\   'mac'     : 'make',
\   'unix'    : 'make',
\   },
\ }
NeoBundleFetch 'git://jblevins.org/git/markdown-mode.git', {
\ 'base' : $EMACS_BUNDLE,
\ }

NeoBundleFetch 'http://git.chise.org/git/elisp/apel.git', {
\ 'base' : $EMACS_BUNDLE,
\ }
NeoBundleFetch 'http://git.chise.org/git/elisp/flim.git', {
\ 'base' : $EMACS_BUNDLE,
\ }
NeoBundleFetch 'http://git.chise.org/git/elisp/semi.git', {
\ 'base' : $EMACS_BUNDLE,
\ }
NeoBundleFetch 'wanderlust/wanderlust', {
\ 'base' : $EMACS_BUNDLE,
\ }

if executable('hg')
  NeoBundleFetch 'http://www.yatex.org/hgrepos/yatex', {
  \ 'type' : 'hg',
  \ 'name' : 'yatex',
  \ 'base' : $EMACS_BUNDLE,
  \ }
endif

if executable('svn')
  NeoBundleFetch 'http://svn.coderepos.org/share/lang/elisp/anything-c-moccur', {
  \ 'base' : $EMACS_BUNDLE,
  \ }
  NeoBundleFetch 'http://emacs-evernote-mode.googlecode.com/svn/trunk', {
  \ 'name' : 'evernote-mode',
  \ 'base' : $EMACS_BUNDLE,
  \ }
endif

"" Bash
let $BASH_BUNDLE = expand('$HOME/.bash/bundle')
NeoBundleFetch 'hokaccha/nodebrew', {
\ 'base' : $BASH_BUNDLE,
\ }
NeoBundleFetch 'seebi/dircolors-solarized', {
\ 'base' : $BASH_BUNDLE,
\ }

"" Zsh
if executable('zsh')
  let $ZSH_BUNDLE = expand('$HOME/.zsh/bundle')

  NeoBundleFetch 'zsh-users/antigen', {
  \ 'base' : $ZSH_BUNDLE,
  \ }
  NeoBundleFetch 'robbyrussell/oh-my-zsh', {
  \ 'base' : $ZSH_BUNDLE,
  \ }
  NeoBundleFetch 'grml/zsh-lovers', {
  \ 'base' : $ZSH_BUNDLE,
  \ }
  NeoBundleFetch 'hchbaw/auto-fu.zsh', {
  \ 'base' : $ZSH_BUNDLE,
  \ }
  " NeoBundleFetch 'zsh-users/zsh-completions', {
  " \ 'base' : $ZSH_BUNDLE,
  " \ }
  " NeoBundleFetch 'zsh-users/zsh-syntax-highlighting', {
  " \ 'base' : $ZSH_BUNDLE,
  " \ }
  " NeoBundleFetch 'zsh-users/zaw', {
  " \ 'base' : $ZSH_BUNDLE,
  " \ }

  " unlet ZSH_BUNDLE
endif

" unlet EMACS_BUNDLE BASH_BUNDLE

"---------------------------------------------------------------------------
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
