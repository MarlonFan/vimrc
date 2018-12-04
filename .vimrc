set et
set ci
set sw=4
set ts=4
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

filetype plugin on
let mapleader = "["

call plug#begin('~/.vim/plugged')

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1

Plug 'vim-airline/vim-airline'
Plug 'Yggdroot/indentLine'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/syntastic'
Plug 'morhetz/gruvbox'
Plug 'terryma/vim-multiple-cursors'
Plug 'jiangmiao/auto-pairs'
Plug 'ervandew/supertab'
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'joshdick/onedark.vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'zchee/deoplete-go', { 'do': 'make'}
Plug 'w0rp/ale'

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
let g:airline#extensions#tabline#formatter = 'default'
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
let g:go_metalinter_enabled = ["goimports","vet", "golint", "errcheck"]
let g:go_list_type = "quickfix"


autocmd FileType go nmap <Leader>i  <Plug>(go-info)
autocmd FileType go nmap <leader>t  <Plug>(go-test)
autocmd FileType go nmap <leader>b  <Plug>(go-build)
autocmd FileType go nmap <leader>v  <Plug>(go-vet)
autocmd FileType go nmap <leader>ft <Plug>(go-test-func)

"
" deoplete
"
set completeopt-=preview

"
" lint
"
call ale#linter#Define('go', {
\   'name': 'revive',
\   'output_stream': 'both',
\   'executable': 'revive',
\   'read_buffer': 0,
\   'command': 'revive %t',
\   'callback': 'ale#handlers#unix#HandleAsWarning',
\})


"
" keymap
"
nnoremap <Leader>p :CtrlP<CR>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>n :bn<CR>
nnoremap <Leader>m :bp<CR>
nnoremap <Leader>e :CtrlPMRUFiles<CR>
