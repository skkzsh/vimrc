"""" Vundle

""" File Typeの検出を無効
filetype off

""" Vundleを初期化して
""" Vundle自身もVundleで管理
""" set rtp+=~/.vim/bundle/vundle/
""" call vundle#rc()
set rtp+=$DOT_VIM/bundle/vundle/
call vundle#rc('$DOT_VIM/bundle')

"---------------------------------------------------------------------------
Bundle 'gmarik/vundle'

"" Unite
Bundle 'Shougo/unite.vim'
Bundle 'thinca/vim-unite-history'
Bundle 'tsukkee/unite-help'
Bundle 'h1mesuke/unite-outline'
Bundle 'tsukkee/unite-tag'
" Bundle 'soh335/unite-qflist'
" Bundle 'mattn/unite-gist'

"" neocomplcache
Bundle 'Shougo/neocomplcache'
Bundle 'Shougo/neocomplcache-snippets-complete'
Bundle 'Shougo/neocomplcache-clang'
"" -- clangをInstall
Bundle 'Shougo/vimfiler'

Bundle 'Shougo/vimshell'
Bundle 'Shougo/vimproc'
"" --- Make する

"" thinca
Bundle 'thinca/vim-quickrun'
Bundle 'thinca/vim-poslist'
Bundle 'thinca/vim-visualstar'
Bundle 'thinca/vim-ref'
Bundle 'thinca/vim-localrc'
" Bundle 'thinca/vim-guicolorscheme'

"" mattn
Bundle 'mattn/webapi-vim'
" Bundle 'mattn/mkdpreview-vim'
if executable('git')
    Bundle 'mattn/gist-vim'
endif

"" tpope
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-surround'
" Bundle 'tpope/vim-markdown'

Bundle 'vim-jp/vimdoc-ja'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'tomtom/tcomment_vim'
Bundle 'tsaleh/vim-matchit'
Bundle 'fuenor/vim-statusline'
"" -- plugin directroyを作成して
"" -- insert-statusline.vimをその中に入れる必要がある
Bundle 'taku-o/vim-batch-source'
Bundle 'tyru/open-browser.vim'
Bundle 'PProvost/vim-ps1'
" Bundle 'wannesm/wmgraphviz.vim'
" Bundle 'vim-pandoc/vim-pandoc'

if executable('w3m')
    Bundle 'yuratomo/w3m.vim'
endif
if executable('ctags')
    Bundle 'taglist.vim'
endif

" Bundle 'kien/ctrlp'
" Bundle 'nvie/vim-flakes8'
" Bundle 'kevinw/pyflakes-vim'
" Bundle 'c9s/perlomni'
" Bundle 'c9s/cpan'
" perlbrew
" textobj

Bundle 'YankRing.vim'
Bundle 'Align'
Bundle 'sudo.vim'
Bundle 'errormarker.vim'
Bundle 'python_fold'
Bundle 'sh.vim'
" Bundle 'Super-Shell-Indent'
" Bundle 'css_color.vim'
" Bundle 'c.vim'
" Bundle 'clang'
" Bundle 'clang_complete'
" Bundle 'perl-support.vim'
" Bundle 'occur.vim'
" Bundle 'Markdown'
" Bundle 'buftabs'
Bundle 'autodate.vim'
"" -- Kaoriya版以外には入っていないので

" Bundle 'git://vim-latex.git.sourceforge.net/gitroot/vim-latex/vim-latex'
" Bundle 'git://git.wincent.com/command-t.git'

"---------------------------------------------------------------------------
"" File Type検出, Plugin, IndentをON
filetype plugin indent on

"---------------------------------------------------------------------------
"""" Install clang
"" llvm, clang, compiler-rtをDownload (or svn)
"" Directoryをそれぞれllvm, clang, compiler-rtにRename
"" llvm下のtoolsにclang, projectにcompiler-rtをmv
"" llvmと同階層にmkdir buildしてcd build
"" ../llvm/configure --enable-optimized
"" make -j2  # -jの後の数だけ並列
"" sudo [paco -p llvm-clang] make install
