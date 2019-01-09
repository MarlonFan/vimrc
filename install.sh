if [ ! -d "$HOME/.config/nvim" ]
then
    mkdir "${HOME}/.config/nvim"
fi

curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

ln -s "$(pwd)/.vimrc" "${HOME}/.config/nvim/init.vim"
ln -s "$(pwd)/coc-settings.json" "${HOME}/.config/nvim/coc-settings.json"

