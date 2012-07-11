"" Vim-LaTeX

" .tex FileのTypeをtexにする
let g:tex_flavor = 'latex'

"" EUCに変換して保存する
autocmd filetype tex :set fileencoding=euc-jp

"" Default Target
let g:Tex_DefaultTargetFormat = 'dvi'
"let g:Tex_DefaultTargetFormat = 'pdf'

"" platex(エラーで停止しないようオプション指定)
let g:Tex_CompileRule_dvi = 'platex -kanji=euc --interaction=nonstopmode $*'
"" bibtex
let g:Tex_BibtexFlavor = 'jbibtex'

"" pdfファイル生成のための依存関係を記述。
"" 以下の設定の場合、ターゲットにpdfを指定して\llでコンパイルすると、
"" まず.dviファイルが作られ、次にそれをもとに.pdfファイルが作られる
let g:Tex_FormatDependency_pdf = 'dvi,pdf'
"" dvipdfmx
let g:Tex_CompileRule_pdf = 'dvipdfmx $*.dvi'
"let g:Tex_CompileRule_pdf = 'pdflatex $*.tex'

"" Viewer
if has('mac')
    let g:Tex_ViewRule_dvi = 'open -a Mxdvi'
    let g:Tex_ViewRule_pdf = 'xpdf'
    "let g:Tex_ViewRule_pdf = 'open -a Preview'
elseif has('unix')
    let g:Tex_ViewRule_dvi = 'xdvi'
    let g:Tex_ViewRule_pdf = 'apvlv'
elseif has('win32')
    let g:Tex_ViewRule_dvi = 'dviout'
    let g:Tex_ViewRule_pdf = 'AcroRd32'
endif

"" 自動折りたたみを無効
" let g:TeX_AutoFolding = 0

"" Warning無視
" let g:Tex_IgnoredWarnings =
"             \'Underfull'."\n".
"             \'Overfull'."\n".
"             \'specifier changed to'."\n".
"             \'You have requested'."\n".
"             \'Missing number, treated as zero.'."\n".
"             \'There were undefined references'."\n".
"             \'Citation %.%# undefined'."\n".
"             \"Font shape \`JT1/gt/m/it\' undefined"."\n".
"             \"Font shape \`JY1/gt/m/it\' undefined"."\n".
"             \"Font shape \`JT1/mc/m/it\' undefined"."\n".
"             \"Font shape \`JY1/mc/m/it\' undefined"."\n".
"             \'LaTeX Font Warning: Some font shapes were not available, defaults substituted.'
" let g:Tex_IgnoreLevel = 12
