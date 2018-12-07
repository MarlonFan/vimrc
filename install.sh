currentPath=$(pwd)

ln -s "${currentPath}/.vimrc" "${HOME}/.vimrc"
ln -s "${currentPath}/.vim" "${HOME}/.vim"

if [ ! -d "$HOME/.config" ]
then 
    mkdir "${HOME}/.config"
fi

ln -s "${currentPath}/.vim" "${HOME}/.config/nvim"
ln -s "${currentPath}/vim-git/.vimrc" "${HOME}/.config/nvim/init.vim"

