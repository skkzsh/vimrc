if has('win32')
  let s:dotvim = 'vimfiles'
else
  let s:dotvim = '.vim'
endif

""" ~/.vimの位置
""" See s:dotvim in autoload/getscript.vim

let $AUTOINSTALL_VIM = $HOME . '/' . s:dotvim
let $CONF_VIM = $AUTOINSTALL_VIM . '/conf'
"" expand('$AUTOINSTALL_VIM/conf')

"" source $CONF_VIM/kaoriya-init.vim

source $CONF_VIM/base-init.vim
source $CONF_VIM/appear-init.vim
source $CONF_VIM/move-init.vim
source $CONF_VIM/auto-move-init.vim
source $CONF_VIM/edit-init.vim
source $CONF_VIM/auto-edit-init.vim
source $CONF_VIM/abbrev-init.vim
source $CONF_VIM/ja-init.vim

source $CONF_VIM/bundle-init.vim

source $CONF_VIM/color-init.vim
source $CONF_VIM/plugin-init.vim
source $CONF_VIM/move-plugin-init.vim
source $CONF_VIM/edit-plugin-init.vim
source $CONF_VIM/appear-plugin-init.vim
source $CONF_VIM/internet-init.vim
source $CONF_VIM/neocomplete-init.vim
source $CONF_VIM/unite-init.vim
" source $CONF_VIM/latex-init.vim

source $CONF_VIM/test-init.vim

""" Local
let $LOCAL_VIM = $AUTOINSTALL_VIM . '/local'
if isdirectory($LOCAL_VIM)
  if filereadable($LOCAL_VIM . '/local-init.vim')
    source $LOCAL_VIM/local-init.vim
  endif
endif

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
