#!/bin/bash
# Make vim IDE
cp .vimrc ~/.vimrc
echo "Installing Plugins"
vim +PlugInstall +q +q &> /dev/null
echo "YouCompleteMe Engine Compiling"
python3 ~/.vim/plugged/YouCompleteMe/install.py --all &> /dev/null

# configure zsh
cp .histfile ~/.histfile
cp .zshrc ~/.zshrc
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.config/zsh/zsh-autosuggestions
zsh
