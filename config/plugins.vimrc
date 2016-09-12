"=============================================================================="
"                                  Deoplete                                    "
"=============================================================================="
" Make deoplete launch at startup
let g:deoplete#enable_at_startup = 1

if !exists('g:deoplete#omni#input_patterns')
  let g:deoplete#omni#input_patterns = {}
endif

" Disable automatic autocompletion
let g:deoplete#disable_auto_complete = 1

let g:deoplete#enable_ignore_case = 1

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
"                                   Markdown                                   "
"=============================================================================="
" Use :InstantMarkdownPreview to launch preview
let g:instant_markdown_autostart = 0

" Disable folding
let g:vim_markdown_folding_disabled = 1

" Highlight for the following filetype
let g:vim_markdown_fenced_languages = ['python=py', 'rust=rs', 'javascript=js']

" Highlight TOML syntax
let g:vim_markdown_toml_frontmatter = 1

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
"                                     Tern                                     "
"=============================================================================="
let g:tern#command = ["tern"]
let g:tern#arguments = ["--persistent"]
let g:tern_show_signature_in_pum = 1
let g:tern_show_argument_hints = 'on_hold'
au BufNewFile,BufRead .tern-project set filetype=json
autocmd FileType javascript setlocal omnifunc=tern#Complete

"=============================================================================="
"                                  Typescript                                  "
"=============================================================================="
let g:deoplete#sources#tss#javascript_support = 1

"=============================================================================="
"                                   Neomake                                    "
"=============================================================================="
autocmd! BufWritePost,BufEnter * Neomake

let g:tern_map_keys=1

" Python
let g:neomake_python_enabled_makers = ['pylint', 'pep8']

" Rust
let g:neomake_rust_enabled_makers = ['rustc']

" C++
let g:neomake_cpp_enable_markers=['clang']
let g:neomake_cpp_clang_args = ["-std=c++14", "-Wextra", "-Wall", "-fsanitize=undefined","-g"]

" Javascript
let g:eslint_path = system('PATH=$(npm bin):$PATH && which eslint')
let g:neomake_javascript_enabled_makers = ['eslint']
let g:neomake_javascript_eslint_exe=substitute(g:eslint_path, '^\n*\s*\(.\{-}\)\n*\s*$', '\1', '')

let g:neomake_warning_sign = {
  \ 'text': 'W',
  \ 'texthl': 'WarningMsg',
  \ }
let g:neomake_error_sign = {
  \ 'text': 'E',
  \ 'texthl': 'ErrorMsg',
  \ }

"=============================================================================="
"                                 DelimitMate                                  "
"=============================================================================="
let delimitMate_expand_cr = 1
