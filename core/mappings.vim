"{ Custom key mappings
" Save key strokes (now we do not need to press shift to enter command mode).
" Vim-sneak has also mapped `;`, so using the below mapping will break the map
" used by vim-sneak
nnoremap ; :
xnoremap ; :
let mapleader = " " " map leader to Space

" Move cursor by visual lines with Shift (for very long lines)
nnoremap J gj
nnoremap K gk

" Do not include white space characters when using $ in visual mode,
" see https://vi.stackexchange.com/q/12607/15292
xnoremap $ g_

" Jump to matching pairs easily in normal mode
nnoremap <Tab> %

" Go to start or end of line easier
nnoremap H ^
xnoremap H ^
nnoremap L g_
xnoremap L g_

" Fast window switching, inspiration from
" https://stackoverflow.com/a/4373470/6064933
nnoremap <M-left> <C-w>h
nnoremap <M-right> <C-w>l
nnoremap <M-down> <C-w>j
nnoremap <M-up> <C-w>k

" Continuous visual shifting (does not exit Visual mode), `gv` means
" to reselect previous visual area, see https://superuser.com/q/310417/736190
xnoremap < <gv
xnoremap > >gv


" Find and replace (like Sublime Text 3)
nnoremap <C-H> :%s/
xnoremap <C-H> :s/

" Decrease indent level in insert mode with shift+tab
inoremap <S-Tab> <ESC><<i

" Strip whitespace
nnoremap <leader>w :call utils#StripTrailingWhitespaces()<CR>

" Highlight lines over char limit
nnoremap <leader>l :call ToggleHighlightLongLines()<CR>

" Highlight search results
nnoremap <leader>h :call ToggleHighlight()<CR>


" CoC completion

" Run on init:
" :CocInstall coc-java
" :CocInstall coc-json

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)
