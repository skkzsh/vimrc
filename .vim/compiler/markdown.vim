if exists("current_compiler")
  finish
endif
let current_compiler = "markdown"

if exists(":CompilerSet") != 2
  command -nargs=* CompilerSet setlocal <args>
endif

let s:cpo_save = &cpo
set cpo&vim

""" 上から順にCommandの存在をCheckして
""" 存在すればそれをMake Programにする
if executable('rdiscount')
  CompilerSet makeprg=rdiscount\ %\ >\ %<.html
elseif executable('multimarkdown')
  CompilerSet makeprg=multimarkdown\ %\ >\ %<.html
elseif executable('MultiMarkdown.pl')
  CompilerSet makeprg=MultiMarkdown.pl\ %\ >\ %<.html
elseif executable('bluecloth')
  CompilerSet makeprg=bluecloth\ %\ >\ %<.html
elseif executable('markdown')
  CompilerSet makeprg=markdown\ %\ >\ %<.html
elseif executable('Markdown.pl')
  CompilerSet makeprg=Markdown.pl\ %\ >\ %<.html
elseif executable('pandoc')
  CompilerSet makeprg=pandoc\ --from=markdown\ --to=html\ %\ >\ %<.html
elseif executable('redcarpet')
  CompilerSet makeprg=redcarpet\ %\ >\ %<.html
elseif executable('kramdown')
  CompilerSet makeprg=kramdown\ %\ >\ %<.html
elseif executable('mdown')
  CompilerSet makeprg=mdown\ -i\ %\ >\ %<.html
else
  let g:nomarkdowncompilerset = 1
endif

let &cpo = s:cpo_save
unlet s:cpo_save
