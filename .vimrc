set hidden
set number
set updatetime=300
set noshowmode
set noswapfile
set incsearch
set autoread
set vb t_vb=
set encoding=utf-8
set clipboard=unnamedplus
set nohls
set signcolumn=yes
set expandtab shiftwidth=4
set tabstop=4 softtabstop=4
set list listchars=extends:❯,precedes:❮,tab:▸\ ,trail:˽
set autoindent

syntax on
filetype plugin on

call plug#begin('~/.config/nvim/plugged')

Plug 'vim-airline/vim-airline'
"Plug 'Yggdroot/indentLine'
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'
Plug 'terryma/vim-multiple-cursors'
"Plug 'jiangmiao/auto-pairs'
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
Plug 'StanAngeloff/php.vim', { 'for': 'php' }
Plug 'ervandew/supertab'
Plug 'Shougo/denite.nvim'
Plug 'scrooloose/nerdcommenter'
Plug 'hail2u/vim-css3-syntax'
Plug 'sgur/vim-editorconfig'
Plug 'Yggdroot/LeaderF', {'do': './install.sh'}
Plug 'plasticboy/vim-markdown'
Plug 'mzlogin/vim-markdown-toc'

Plug 'neoclide/coc.nvim', {'do': 'yarn install'}

call plug#end()

for s:path in split(glob('~/.config/nvim/rc/*.vim'), "\n")
  exe 'source ' . s:path
endfor
