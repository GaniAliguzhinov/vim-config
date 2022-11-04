set matchpairs+=<:>,「:」,『:』,【:】,“:”,‘:’,《:》
set visualbell noerrorbells  " Do not use visual and errorbells
set history=500  " The number of command and search history to keep
set list listchars=tab:▸\ ,extends:❯,precedes:❮,nbsp:+
set autowrite
set completeopt-=noinsert  " Auto select the first completion entry
" set completeopt+=menuone  " Show menu even if there is only one item
" set completeopt+=preview  " Disable the preview window
" set pumheight=10  " Maximum number of items to show in popup menu
set spelllang=en,ru,cjk  " Spell languages

" set completeopt=menu,menuone,noselect


" Make enter use the completion option:
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
