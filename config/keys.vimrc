"=============================================================================="
"                                Map Leader Key                                "
"=============================================================================="
let mapleader = ","

"=============================================================================="
"                                Function Keys                                 "
"=============================================================================="
" Set shortcut for special paste to avoid extra tabs
set pastetoggle=<F2>

" Set shortcut for spellchecking english and french
imap <F3> :setlocal spell! spelllang=en<CR>
nmap <F3> :setlocal spell! spelllang=en<CR>

imap <F4> :setlocal spell! spelllang=fr<CR>
nmap <F4> :setlocal spell! spelllang=fr<CR>

" Set shortcut for displaying the Nerdtree
nnoremap <silent> <F9> :NERDTreeToggle<CR>

" Set shortcut for displaying the tabar
nnoremap <silent> <F10> :TagbarToggle<CR>

"=============================================================================="
"                                  Ctrl Keys                                   "
"=============================================================================="
" Change deoplete's autocomplete shortcut for Ctrl + Space
inoremap <silent><expr> <C-@>
\ pumvisible() ? "\<C-n>" :
\ deoplete#mappings#manual_complete()

" Use <C-L> to clear the highlighting of :set hlsearch.
if maparg('<C-L>', 'n') ==# ''
  nnoremap <silent> <C-L> :nohlsearch<CR><C-L>
endif

"=============================================================================="
"                                   Alt Keys                                   "
"=============================================================================="
nnoremap <A-Down> :m .+1<CR>==
nnoremap <A-Up> :m .-2<CR>==
inoremap <A-Down> <Esc>:m .+1<CR>==gi
inoremap <A-Up> <Esc>:m .-2<CR>==gi
vnoremap <A-Down> :m '>+1<CR>gv=gv
vnoremap <A-Up> :m '<-2<CR>gv=gv

"=============================================================================="
"                                 Ctrl+Alt Keys                                "
"=============================================================================="
" Set shortcut to copy a line down
noremap <C-A-Down> yyp
inoremap <C-A-Down> <esc> yypi
