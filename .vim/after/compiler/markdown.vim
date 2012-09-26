if exists("my_current_compiler")
  finish
endif
let my_current_compiler = "markdown"

if exists(":CompilerSet") != 2
    command -nargs=* CompilerSet setlocal <args>
endif

""" 上から順にCommandの存在をCheckして
""" 存在すればそれをMake Programにする
if executable('mdown')
    CompilerSet makeprg=mdown\ -i\ %\ >\ %<.html
elseif executable('pandoc')
    CompilerSet makeprg=pandoc\ --from=markdown\ --to=html\ %\ >\ %<.html
elseif executable('multimarkdown')
    CompilerSet makeprg=multimarkdown %\ >\ %<.html
elseif executable('MultiMarkdown.pl')
    CompilerSet makeprg=MultiMarkdown.pl %\ >\ %<.html
elseif executable('rdiscount')
    CompilerSet makeprg=rdiscount %\ >\ %<.html
elseif executable('bluecloth')
    CompilerSet makeprg=bluecloth %\ >\ %<.html
elseif executable('markdown')
    CompilerSet makeprg=markdown %\ >\ %<.html
elseif executable('Markdown.pl')
    CompilerSet makeprg=Markdown.pl %\ >\ %<.html
elseif executable('redcarpet')
    CompilerSet makeprg=redcarpet %\ >\ %<.html
elseif executable('kramdown')
    CompilerSet makeprg=kramdown %\ >\ %<.html
else
    let g:nomarkdowncompilerset = 1
endif
