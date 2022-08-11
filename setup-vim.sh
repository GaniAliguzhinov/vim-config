#!/bin/bash

SEP="=============================="

mkdir -p ~/.vim/core
mkdir -p ~/.vim/autoload

wget https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim -P ~/.vim/autoload/

cat <<EOT >> ~/.vim/vimrc
filetype plugin on
source ~/.vim/core/utils.vim
source ~/.vim/core/plugins.vim
source ~/.vim/core/theme.vim
source ~/.vim/core/airline.vim
source ~/.vim/core/core.vim
source ~/.vim/core/complete.vim
source ~/.vim/core/mappings.vim
EOT

cp core/*.vim ~/.vim/core/

echo -e "\n$SEP\nNow please run vim, and in the normal mode, run command :PlugInstall\n$SEP\n"
