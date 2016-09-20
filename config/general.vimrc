"=============================================================================="
"                                   Editor                                     "
"=============================================================================="
colo default                " Set default colorscheme
set showcmd                 " Show pushed keys
set tabstop=4               " Set number of spaces for tabs
set expandtab               " Convert tabs in spaces
set shiftround              " Round indentation in a multiple of shiftwidth
set noshowmode              " Hide current mode Ex: Insert, Normal or Visual
set ignorecase              " Make searching case insensitive
set shiftwidth=4            " Number of caracter indented with reindent ops
set softtabstop=4           " Number of space deleted by the spacebar
set display+=lastline       " Show complety lines that are too long
set clipboard=unnamedplus   " copy/paste available from the clipboard

"=============================================================================="
"                                  Display                                     "
"=============================================================================="
set title                   " Update terminal title
set number                  " Show line number
set ruler                   " Show cursor's position
set wrap                    " Show too long lines
set laststatus=2            " Permanently show status bar
set completeopt-=preview    " Disable preview window at autocompletion

"=============================================================================="
"                              Visual Highlight                                "
"=============================================================================="
highlight Visual cterm=NONE ctermbg=0 ctermfg=NONE guibg=Grey40

"=============================================================================="
"                             Spelling Highlight                               "
"=============================================================================="
highlight clear SpellBad
highlight SpellBad term=standout ctermfg=1 term=underline cterm=underline
highlight clear SpellCap
highlight SpellCap term=underline cterm=underline
highlight clear SpellRare
highlight SpellRare term=underline cterm=underline
highlight clear SpellLocal
highlight SpellLocal term=underline cterm=underline

"=============================================================================="
"                             Search Parameters                                "
"=============================================================================="
set ignorecase              " Ignore letter case while searching for
set smartcase               " While maj in searching
set scrolloff=3             " 3 lines around the cursor for scrolling

"=============================================================================="
"                                   Extra                                      "
"=============================================================================="
set hidden                          " Hidden unused buffers
set wildmode=longest:full,full      " Options of command line completion

" Define directory to store backup and swap files
set backupdir=~/.config/nvim/backup
set directory=~/.config/nvim/backup

" Use Neovim's python virtual environment
let g:python3_host_prog = "/home/kynarth/.virtualenvs/neovim/bin/python"

" Disable python2 interface
let g:loaded_python_provider = 1

" Disable python2 interpreter check
let g:python_host_skip_check = 1

" True color terminal support
"let $NVIM_TUI_ENABLE_TRUE_COLOR=1

" Remove all trailing whitespace automatically
autocmd BufWritePre * :%s/\s\+$//e

" Treat ejs file like html ones
autocmd BufRead,BufNewFile *.ejs setfiletype html
