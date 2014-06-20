if did_filetype()
  finish
endif

let s:line1 = getline(1)

"" blockdiag series
"" TODO: get multiline?
"" TODO: use variable, for?
"" TODO: use s:name, substitute?
if s:line1 =~ '\<diagram\|blockdiag\>\s*{'
  setfiletype blockdiag
elseif s:line1 =~ '\<seqdiag\>\s*{'
  setfiletype seqdiag
elseif s:line1 =~ '\<actdiag\>\s*{'
  setfiletype actdiag
elseif s:line1 =~ '\<nwdiag\>\s*{'
  setfiletype nwdiag
elseif s:line1 =~ '\<rackdiag\>\s*{'
  setfiletype rackdiag
elseif s:line1 =~ '\<packetdiag\>\s*{'
  setfiletype packetdiag
endif

" if getline(1) =~ '^#!.*\<gnuplot\>'
"     setfiletype gnuplot
" endif

unlet s:line1
