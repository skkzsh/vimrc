if exists("did_load_filetypes")
    finish
endif

augroup filetypedetect
    autocmd!
    autocmd BufRead,BufNewFile *.mdt,*.mdwn,*.mark setfiletype markdown
    " autocmd BufRead,BufNewFile *.diag setfiletype blockdiag
augroup END
