if did_filetype()
    finish
endif

let s:line1 = getline(1)

"" blockdiag series
"" TODO: get multiline?
"" TODO: use variable, for?
"" TODO: use s:name, substitute?
if s:line1 =~ '\<diagram\|blockdiag\>'
    setfiletype blockdiag
elseif s:line1 =~ '\<seqdiag\>'
    setfiletype seqdiag
elseif s:line1 =~ '\<actdiag\>'
    setfiletype actdiag
elseif s:line1 =~ '\<nwdiag\>'
    setfiletype nwdiag
elseif s:line1 =~ '\<rackdiag\>'
    setfiletype rackdiag
elseif s:line1 =~ '\<packetdiag\>'
    setfiletype packetdiag
endif

" if getline(1) =~ '^#!.*\<gnuplot\>'
"     setfiletype gnuplot
" endif

unlet s:line1
