ln -s "${HOME}/vim-git/.vimrc" "${HOME}/.vimrc"
ln -s "${HOME}/vim-git/.vim" "${HOME}/.vim"

if [ ! -d "$HOME/.config/nvim" ]
then 
    mkdir "${HOME}/.config/nvim"
fi

ln -s "${HOME}/vim-git/.vim" "${HOME}/.config/nvim/init.vim"
ln -s "${HOME}/vim-git/.vimrc" "${HOME}/.config/nvim/init.vim"

