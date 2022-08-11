#!/bin/bash

SEP="=============================="

mkdir -p ~/.config/nvim/core
mkdir -p ~/.local/share/nvim/site/autoload

wget https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim -P ~/.local/share/nvim/site/autoload/

cat <<EOT >> ~/.config/nvim/init.vim
filetype plugin on
source ~/.config/nvim/core/utils.vim
source ~/.config/nvim/core/plugins.vim
source ~/.config/nvim/core/theme.vim
source ~/.config/nvim/core/airline.vim
source ~/.config/nvim/core/core.vim
source ~/.config/nvim/core/complete.vim
source ~/.config/nvim/core/mappings.vim
EOT

cp core/*.vim ~/.config/nvim/core/

echo -e "\n$SEP\nNow please run nvim, and in the normal mode, run command :PlugInstall"
echo -e "\nConsider aliasing \`alias vim='nvim'\`\n$SEP\n"
