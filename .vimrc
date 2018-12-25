set et
set ci

set ts=4
set shiftwidth=4
set softtabstop=4
set et
set expandtab
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
Plug 'ervandew/supertab'
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'
Plug 'joshdick/onedark.vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'w0rp/ale'
Plug 'schickling/vim-bufonly'
Plug 'SirVer/ultisnips'
Plug 'wakatime/vim-wakatime'

Plug 'neoclide/coc.nvim', {'do': 'yarn install'}
call plug#end()

"
" CtrlP
"
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn)$',
    \ 'file': '\v\.(exe|so|dll)$',
    \ 'link': 'SOME_BAD_SYMBOLIC_LINKS',
    \ }
let g:ctrlp_cmd = 'CtrlP'

"
" NerdTree
"
map <C-e> :NERDTreeToggle<CR>

"
" AirLine插件设置
"
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#whitespace#mixed_indent_algo = 1
let g:airline#extensions#tabline#buffer_nr_show=1
let g:airline#extensions#c_like_langs = ['arduino', 'c', 'cpp', 'cuda', 'go', 'javascript', 'ld', 'php']

"
" Theme
"
set termguicolors
set guifont=Consolas:h12
set background=dark
colorscheme gruvbox
"highlight Normal guibg=NONE ctermbg=None
"colorscheme onedark
"let g:onedark_termcolors = 256
"let g:onedark_terminal_italics = 1
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
autocmd FileType go nmap <leader>ft <Plug>(go-test-func)

"
" deoplete
"
set completeopt-=preview

"
" deoplete-go
"
"let g:deoplete#sources#go#gocode_binary = $GOPATH.'/bin/gocode'
"let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const']

"
" lint
"
let g:ale_completion_enabled = 1
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
\    'go':['revive']
\}

"
" keymap
"
nnoremap <Leader>p :CtrlP<CR>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>n :bn<CR>
nnoremap <Leader>m :bp<CR>
nnoremap <Leader>e :CtrlPMRUFiles<CR>
nnoremap <Leader>l :BufOnly<CR>
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
