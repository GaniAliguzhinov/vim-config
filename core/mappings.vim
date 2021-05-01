"{ Custom key mappings
" Save key strokes (now we do not need to press shift to enter command mode).
" Vim-sneak has also mapped `;`, so using the below mapping will break the map
" used by vim-sneak
nnoremap ; :
xnoremap ; :

" Move the cursor based on physical lines, not the actual lines.
nnoremap <expr> j (v:count == 0 ? 'gj' : 'j')
nnoremap <expr> k (v:count == 0 ? 'gk' : 'k')
nnoremap ^ g^
nnoremap 0 g0

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
