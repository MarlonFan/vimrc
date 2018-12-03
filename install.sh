ln -s "${HOME}/vim-git/.vimrc" "${HOME}/.vimrc"
ln -s "${HOME}/vim-git/.vim" "${HOME}/.vim"

if [ ! -d "$HOME/.config" ]
then 
    mkdir "${HOME}/.config"
fi

ln -s "${HOME}/vim-git/.vim" "${HOME}/.config/nvim"
ln -s "${HOME}/vim-git/.vimrc" "${HOME}/.config/nvim/init.vim"

