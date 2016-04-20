" Execute current file with python 2 or 3
nnoremap <buffer> <F5> :exec '!python2' shellescape(@%, 1)<cr>
nnoremap <buffer> <F6> :exec '!python3' shellescape(@%, 1)<cr>
