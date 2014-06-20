""" TODO: ~/vimfiles
if has('win32')
    let $DOT_VIM = expand('$HOME/vimfiles')
    " let $DOT_VIM = expand('$VIM/vimfiles')
else
    let $DOT_VIM = expand('~/.vim')
endif

let $VIM_CONF = expand('$DOT_VIM/conf')

"" source $VIM_CONF/kaoriya-init.vim

source $VIM_CONF/base-init.vim
source $VIM_CONF/appear-init.vim
source $VIM_CONF/move-init.vim
source $VIM_CONF/auto-move-init.vim
source $VIM_CONF/edit-init.vim
source $VIM_CONF/auto-edit-init.vim
source $VIM_CONF/abbrev-init.vim
source $VIM_CONF/ja-init.vim

source $VIM_CONF/bundle-init.vim

source $VIM_CONF/color-init.vim
source $VIM_CONF/plugin-init.vim
source $VIM_CONF/move-plugin-init.vim
source $VIM_CONF/edit-plugin-init.vim
source $VIM_CONF/appear-plugin-init.vim
source $VIM_CONF/internet-init.vim
source $VIM_CONF/neocomplcache-init.vim
source $VIM_CONF/unite-init.vim
source $VIM_CONF/latex-init.vim

source $VIM_CONF/test-init.vim

""" Local
if isdirectory(expand('$DOT_VIM/local'))
    let $VIM_LOCAL=expand('$DOT_VIM/local')
    if filereadable(expand('$VIM_LOCAL/local-init.vim'))
        source $VIM_LOCAL/local-init.vim
    endif
endif

""" ~/.vimの位置
""" See s:dotvim in autoload/getscript.vim

""" Memo
"" 最後に定義された場所のCheck - verbose set HOGE?

"" 設定の場合分け
"" Featureは :version で確認して,
"" if has('') を使う.
"" Versionが7.2より大きい場合,
"" if v:version > 702
"" Minor Version ?.?.072以上の場合,
"" SourceからInstallするときにpatch072を当てた場合,
"" if has('patch072')
