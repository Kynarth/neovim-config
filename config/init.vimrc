"=============================================================================="
"                                Vim-Plug                                      "
"=============================================================================="

call plug#begin('~/.config/nvim/plugged')

" ========== Miscellaneous ==========
Plug 'SirVer/ultisnips'
Plug 'benekastah/neomake'
Plug 'honza/vim-snippets'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-cucumber'
Plug 'tpope/vim-fugitive'
Plug 'Raimondi/delimitMate'
Plug 'Shougo/deoplete.nvim'
Plug 'wakatime/vim-wakatime'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'majutsushi/tagbar',   { 'on': 'TagbarToggle' }

" ========== Appearance ============
Plug 'itchyny/lightline.vim'
Plug 'ryanoasis/vim-devicons'

" ========== Javascript =============
Plug 'carlitux/deoplete-ternjs'
Plug 'ternjs/tern_for_vim', { 'do': 'npm install' }
Plug 'pangloss/vim-javascript', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'mxw/vim-jsx', { 'for': ['javascript', 'javascript.jsx'] }

" ========== Python =================
Plug 'hynek/vim-python-pep8-indent'
Plug 'davidhalter/jedi'
Plug 'zchee/deoplete-jedi'

" ========== Rust ===================
Plug 'cespare/vim-toml'
Plug 'rust-lang/rust.vim',
Plug 'racer-rust/vim-racer'

" ========== Mardown ================
Plug 'godlygeek/tabular', { 'for': 'markdown' }
Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }

" ========== HTML/CSS ===============
Plug 'mattn/emmet-vim'
Plug 'othree/html5.vim'
Plug 'tpope/vim-ragtag'
Plug 'hail2u/vim-css3-syntax'

call plug#end()
