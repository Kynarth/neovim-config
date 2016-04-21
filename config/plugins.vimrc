"=============================================================================="
"                                  Deoplete                                    "
"=============================================================================="
" Make deoplete launch at startup
let g:deoplete#enable_at_startup = 1

" Disable automatic autocompletion
let g:deoplete#disable_auto_complete = 1

"=============================================================================="
"                                 Lightline                                    "
"=============================================================================="
let g:lightline = {
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'fugitive', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component': {
      \   'readonly': '%{&filetype=="help"?"":&readonly?"⭤":""}',
      \   'fugitive': '%{exists("*fugitive#head")?fugitive#head():""}',
      \   'modified': '%{&filetype=="help"?"":&modified?"+":&modifiable?"":"-"}'
      \ },
      \ 'component_visible_condition': {
      \   'readonly': '(&filetype!="help"&& &readonly)',
      \   'modified': '(&filetype!="help"&&(&modified||!&modifiable))',
      \   'fugitive': '(exists("*fugitive#head") && ""!=fugitive#head())'
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '', 'right': '' }
      \ }

"=============================================================================="
"                                   Jedi                                       "
"=============================================================================="
" Disable starting autocomplete when type a dot
let g:jedi#popup_on_dot = 0
let g:jedi#completions_command = '<C-Space>'

" Jedi displays function call signatures in insert mode in real-time, 
" highlighting the current argument.
let g:jedi#show_call_signatures = 0

"=============================================================================="
"                               Vim-Markdown                                   "
"=============================================================================="
" Use :InstantMarkdownPreview to launch preview
let g:instant_markdown_autostart = 0

"=============================================================================="
"                                    Emmet                                     "
"=============================================================================="
" Remap the default <C-Y> leader for emmet plugin
let g:user_emmet_leader_key = '<C-C>'


"=============================================================================="
"                                    Racer                                     "
"=============================================================================="
let g:racer_cmd = '/home/kynarth/.cargo/bin/racer'
let $RUST_SRC_PATH = '/home/kynarth/.local/src/rust/src'

"=============================================================================="
"                                  Python-mode                                 "
"=============================================================================="
let g:pymode_rope = 0               " On/Off Rope
let g:pymode_python = 'python3'     " Python version

" Documentation
let g:pymode_doc = 1                " On/Off documentation script
let g:pymode_doc_bind = 'K'         " Key to show selection documentation 

"Linting
let g:pymode_lint = 1
let g:pymode_lint_checkers = ['pep8', 'pylint', 'pyflakes']

" Auto open cwindow (quickfix) if any errors have been found
let g:pymode_lint_cwindow = 0 

" Auto check on save
let g:pymode_lint_write = 1

" Support virtualenv
let g:pymode_virtualenv = 1

" Enable breakpoints plugin
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_key = '<leader>b'

" syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

" Don't autofold code
let g:pymode_folding = 0


"=============================================================================="
"                                     TagBar                                   "
"=============================================================================="
" Add rust support
let g:tagbar_type_rust = {
\ 'ctagstype' : 'rust',
\ 'kinds' : [
    \'T:types,type definitions',
    \'f:functions,function definitions',
    \'g:enum,enumeration names',
    \'s:structure names',
    \'m:modules,module names',
    \'c:consts,static constants',
    \'t:traits,traits',
    \'i:impls,trait implementations',
\]
\}

"=============================================================================="
"                                 Ultisnips                                    "
"=============================================================================="
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-tab>"

" Set google style for python snippets
let g:ultisnips_python_style = "google"

"=============================================================================="
"                                   TernJS                                     "
"=============================================================================="
au BufNewFile,BufRead .tern-project set filetype=json
let g:tern_show_argument_hints = 'on_hold'
let g:tern_show_signature_in_pum = 1
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType javascript setlocal omnifunc=tern#Complete
