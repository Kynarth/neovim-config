"=============================================================================="
"                                Map Leader Key                                "
"=============================================================================="
let mapleader = ","

"=============================================================================="
"                                Function Keys                                 "
"=============================================================================="
" Set shortcut for special paste to avoid extra tabs
set pastetoggle=<F2>

" Set shortcut for spellchecking
nnoremap <silent> <F7> "<Esc>:silent setlocal spell! spelllang=en<CR>"
nnoremap <silent> <F8> "<Esc>:silent setlocal spell! spelllang=fr<CR>"

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
" Set shortcut to move a line up or down 
noremap <A-Up> dd2kp
inoremap <A-Up> <esc> dd2kpi
noremap <A-Down> ddp
inoremap <A-Down> <esc> ddpi

"=============================================================================="
"                                 Ctrl+Alt Keys                                "
"=============================================================================="
" Set shortcut to copy a line down
noremap <C-A-Down> yyp
inoremap <C-A-Down> <esc> yypi
