set re=1
set ttyfast
set lazyredraw

set sw=4
set ts=4
set et
set number
set incsearch
set foldenable
set encoding=utf-8
set clipboard=unnamed
set list listchars=extends:❯,precedes:❮,tab:▸\ ,trail:˽
set signcolumn=yes
set nohls
set encoding=utf-8
set noswapfile
set softtabstop=4
set shiftwidth=4
set autoindent
set smartcase
set smartindent
set smarttab

syntax on
filetype plugin on

call plug#begin('~/.config/nvim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'
Plug 'terryma/vim-multiple-cursors'
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
Plug '2072/PHP-Indenting-for-VIm', {'for': 'php'}
Plug 'ervandew/supertab'
Plug 'Shougo/denite.nvim'
Plug 'scrooloose/nerdcommenter'
Plug 'hail2u/vim-css3-syntax'
Plug 'sgur/vim-editorconfig'
Plug 'Yggdroot/LeaderF', {'do': './install.sh'}
Plug 'plasticboy/vim-markdown', { 'for': 'markdown'}
Plug 'mzlogin/vim-markdown-toc', { 'for': 'markdown'}
"Plug 'jbgutierrez/vim-better-comments'

Plug 'neoclide/coc.nvim', {'do': 'yarn install'}

call plug#end()

for s:path in split(glob('~/.config/nvim/rc/*.vim'), "\n")
  exe 'source ' . s:path
endfor
