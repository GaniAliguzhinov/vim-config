call plug#begin('~/.vim/plugged')
" Airline
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
" Themes
    Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
    Plug 'ghifarit53/tokyonight-vim'
    Plug 'arcticicestudio/nord-vim'
    Plug 'ayu-theme/ayu-vim' " or other package manager
    Plug 'ajmwagar/vim-deus'
    Plug 'fladson/vim-kitty'
" Language servers
    " After pip3 install --user pynvim:
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()
