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

"=============================================================================="
"                                   Neomake                                    "
"=============================================================================="
autocmd! BufWritePost,BufEnter * Neomake

let g:tern_map_keys=1

let g:neomake_python_enabled_makers = ['pylint', 'pep8']
let g:neomake_rust_enabled_makers = ['rustc']
let g:neomake_javascript_enabled_makers = ['jscs']

let g:neomake_javascript_jscs_maker = {
    \ 'exe': 'jscs',
    \ 'args': ['--no-color', '--preset', 'airbnb', '--reporter', 'inline', '--esnext'],
    \ 'errorformat': '%f: line %l\, col %c\, %m',
    \ }

let g:neomake_warning_sign = {
  \ 'text': 'W',
  \ 'texthl': 'WarningMsg',
  \ }
let g:neomake_error_sign = {
  \ 'text': 'E',
  \ 'texthl': 'ErrorMsg',
  \ }
