set et
set ci
set ts=4
set shiftwidth=4
set softtabstop=4
set et
set expandtab
set hidden
set number
syntax on
set incsearch
set foldenable
set encoding=utf-8
set list listchars=extends:❯,precedes:❮,tab:▸\ ,trail:˽
set cursorline
set clipboard=unnamed
set nohls
set signcolumn=yes

filetype plugin on
let mapleader = ","

call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'Yggdroot/indentLine'
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'
Plug 'terryma/vim-multiple-cursors'
Plug 'jiangmiao/auto-pairs'
"Plug 'ervandew/supertab'
Plug 'scrooloose/nerdtree'
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'
Plug 'fatih/vim-go'
Plug 'w0rp/ale'
Plug 'schickling/vim-bufonly'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'wakatime/vim-wakatime'
Plug 'leafgarland/typescript-vim'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-surround'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'pbogut/fzf-mru.vim'
Plug 'StanAngeloff/php.vim'
Plug 'sgur/vim-editorconfig'
Plug 'Shougo/denite.nvim'
Plug 'joshdick/onedark.vim'

Plug 'neoclide/coc.nvim', {'do': 'yarn install'}

call plug#end()

"
" supertab
"
let g:SuperTabDefaultCompletionType = '<C-X><C-O>'

"
" NerdTree
"
map <C-e> :NERDTreeToggle<CR>
let g:NERDTreeWinPos = "right"
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

nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
nmap <leader>- <Plug>AirlineSelectPrevTab
nmap <leader>+ <Plug>AirlineSelectNextTab

"
" Git
"
nnoremap <silent> <leader>gs :Gstatus<CR>
nnoremap <silent> <leader>gd :Gdiff<CR>
nnoremap <silent> <leader>gp :Gpush<CR>
nnoremap <silent> <leader>gb :Gblame<CR>

"
" Theme
"
set termguicolors
set background=dark
"colorscheme gruvbox
colorscheme onedark
let g:airline_theme='onedark'
let g:onedark_termcolors=256


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

autocmd FileType go nmap <leader>t  <Plug>(go-test)
autocmd FileType go nmap <leader>b  <Plug>(go-build)
autocmd FileType go nmap <leader>v  <Plug>(go-vet)
autocmd FileType go nmap <leader>tf <Plug>(go-test-func)

"
" deoplete
"
set completeopt-=preview

"
" lint
"
"let g:ale_completion_enabled = 1
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
"打开文件时不进行检查
let g:ale_lint_on_enter = 0
let g:ale_lint_on_text_changed = 'never'

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

"
" editorconfig
"
let g:editorconfig_blacklist = {
    \ 'filetype': ['git.*', 'fugitive'],
    \ 'pattern': ['\.un~$']}
let g:editorconfig_verbose = 1

"
" coc
"
set updatetime=300


inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" Use `[c` and `]c` for navigate diagnostics
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Remap for format selected region
vmap <leader>ff  <Plug>(coc-format-selected)

" Shortcuts for denite interface

" show buffers of current workspace
nnoremap <silent> <leader>de :<C-u>Denite buffer<cr>
" Show symbols of current buffer
nnoremap <silent> <leader>do  :<C-u>Denite coc-symbols<cr>
" Search symbols of current workspace
nnoremap <silent> <leader>dt  :<C-u>Denite coc-workspace<cr>
" Show diagnostics of current workspace
nnoremap <silent> <leader>da  :<C-u>Denite coc-diagnostic<cr>
" Show available commands
nnoremap <silent> <leader>dc  :<C-u>Denite coc-command<cr>
" Show available services
nnoremap <silent> <leader>ds  :<C-u>Denite coc-service<cr>
" Show links of current buffer
nnoremap <silent> <leader>dl  :<C-u>Denite coc-link<cr>

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
" keymap
"
"nnoremap <Leader>p :CtrlP<CR>
"nnoremap <leader>e :CtrlPMRUFiles<CR>
nmap <Leader>fe  :FZFMru<CR>
nmap <Leader>fp  :Files<CR>
nmap <Leader>fr  :BTags<CR>
nmap <Leader>fs  :Ag<CR>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>l :BufOnly<CR> " clear other buffer
