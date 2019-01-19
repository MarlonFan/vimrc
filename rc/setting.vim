"
" NerdTree
"
map <C-e> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

"
" AirLine插件设置
"
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#whitespace#mixed_indent_algo = 1
let g:airline#extensions#tabline#buffer_nr_show = 0
let g:airline#extensions#c_like_langs = ['arduino', 'c', 'cpp', 'cuda', 'go', 'javascript', 'ld', 'php']

let g:airline#extensions#tabline#buffer_idx_mode = 1

let g:airline#extensions#tabline#buffer_idx_format = {
    \ '1': '1 ',
    \ '2': '2 ',
    \ '3': '3 ',
    \ '4': '4 ',
    \ '5': '5 ',
    \ '6': '6 ',
    \ '7': '7 ',
    \ '8': '8 ',
    \ '9': '9 '
    \}

"
" Theme
"
set termguicolors
set background=dark
colorscheme gruvbox

"
"
" Easy Align
"
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

"
" IndentLine
"
let g:indentLine_char = '¦'

"
" SuperTab
"
let g:SuperTabDefaultCompletionType = '<C-X><C-O>'

"
" vim-go
"
let g:go_fmt_command = 'goimports'
let g:go_test_timeout = '15s'
let g:go_fmt_fail_silently = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_generate_tags = 1
let g:go_def_mapping_enabled = 0
"
" deoplete
"
set completeopt-=preview

"
" lint

let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
"打开文件时不进行检查
let g:ale_lint_on_enter = 0
let g:ale_lint_on_text_changed = 'never'
let g:ale_fix_on_save = 0

call ale#linter#Define('go', {
\   'name': 'revive',
\   'output_stream': 'both',
\   'executable': 'revive',
\   'read_buffer': 0,
\   'command': 'revive %t',
\   'callback': 'ale#handlers#unix#HandleAsWarning',
\})


let g:ale_linters = {
\   'go':['revive'],
\   'php':['php'],
\   'typescript': [],
\}

let g:ale_fixers = {
\   'php': 'php_cs_fixer',
\   'markdown':'prettier'
\}

"
" denite
"
call denite#custom#map(
  \ 'insert',
  \ '<C-j>',
  \ '<denite:move_to_next_line>',
  \ 'noremap'
  \)
call denite#custom#map(
  \ 'insert',
  \ '<C-k>',
  \ '<denite:move_to_previous_line>',
  \ 'noremap'
  \)

"
" nerdcommenter
"
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

"
" editorconfig
"
let g:editorconfig_blacklist = {
    \ 'filetype': ['git.*', 'fugitive'],
    \ 'pattern': ['\.un~$']}
let g:editorconfig_verbose = 1

"
" php.vim
"
let g:php_minlines= 1000

"
" leaderf
"
let g:Lf_ShortcutF = "<Nop>"
let g:Lf_ShortcutB = "<Nop>"
let g:Lf_StlSeparator = { 'left': '', 'right': '' }
let g:Lf_WindowHeight = 0.30
let g:Lf_UseVersionControlTool = 0

"
" vim-markdown
"
let g:vim_markdown_folding_disabled = 1

