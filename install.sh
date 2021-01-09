mv .vimrc ~/.vimrc

vim -es -u vimrc -i NONE -c "PlugInstall" -c "qa"

python3 ~/vim/plugged/YouCompleteMe/install.py --all

