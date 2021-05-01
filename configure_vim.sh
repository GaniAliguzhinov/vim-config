#!/bin/bash

echo "alias vi=\"vim\"" >> ~/.bashrc

mkdir -p ~/.vim
mkdir -p ~/.vim/core
mkdir -p ~/.vim/autoload

cd ~/.vim/autoload && wget https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim && cd ~

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

cp core/airline.vim ~/.vim/core/
cp core/complete.vim ~/.vim/core/
cp core/core.vim ~/.vim/core/
cp core/mappings.vim ~/.vim/core/
cp core/plugins.vim ~/.vim/core/
cp core/theme.vim ~/.vim/core/
cp core/utils.vim ~/.vim/core/

# Now, do vim and :PlugInstall
