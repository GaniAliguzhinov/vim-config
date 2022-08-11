set backspace=indent,eol,start  " Allow backspace in insert mode
scriptencoding utf-8
set splitbelow splitright
set clipboard=unnamedplus
set noswapfile
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set fileformats=unix,dos  " Fileformats to use for new files


set number
set ignorecase smartcase
set linebreak
set showbreak=↪
set wildmode=list:longest
set cursorline  " Show current line where the cursor is
set scrolloff=3
set noshowmode
set wildignore+=*.o,*.obj,*.bin,*.dll,*.exe
set wildignore+=*/.git/*,*/.svn/*,*/__pycache__/*,*/build/**
set wildignore+=*.jpg,*.png,*.jpeg,*.bmp,*.gif,*.tiff,*.svg,*.ico
set wildignore+=*.pyc
set wildignore+=*.DS_Store
set wildignore+=*.aux,*.bbl,*.blg,*.brf,*.fls,*.fdb_latexmk,*.synctex.gz
set wildignorecase  " ignore file and dir name cases in cmd-completion
set confirm

set shiftround
set virtualedit=block  " Virtual edit is useful for visual block edit
set formatoptions+=mM
set tildeop
set nojoinspaces

set synmaxcol=1000  " Text after this column number is not highlighted
set ttyfast " u got a fast terminal
set re=1
set lazyredraw " to avoid scrolling problems

set nostartofline

set title
set titlestring=
set titlestring=%{Get_titlestr()}


set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set shiftwidth=4    " number of spaces to use for autoindent
set expandtab       " expand tab to spaces so that tabs are spaces
