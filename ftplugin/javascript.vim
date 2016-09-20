" Set indent level to 2 spaces
set tabstop=2               " Set number of spaces for tabs
set shiftwidth=2            " Number of caracter indented with reindent ops
set softtabstop=2           " NUmber of space deleted by the spacebar

" Execute current file with nodejs
nnoremap <buffer> <F6> :exec '!node' shellescape(@%, 1)<cr>
