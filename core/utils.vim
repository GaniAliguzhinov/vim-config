" Functions
function! utils#StripTrailingWhitespaces() abort
  let l:save = winsaveview()
  " vint: next-line -ProhibitCommandRelyOnUser -ProhibitCommandWithUnintendedSideEffect
  keeppatterns %s/\v\s+$//e
  call winrestview(l:save)
endfunction



" Function for setting terminal tab title
function! Get_titlestr() abort
  let l:title_str = ''
  let l:title_str = hostname() . '  '
  let l:title_str = l:title_str . expand('%:p:~') . '  '
  if &buflisted
    let l:title_str = l:title_str . strftime('%Y-%m-%d %H:%M',getftime(expand('%')))
  endif

  return l:title_str
endfunction


" Highlight lines longer than x chars
" https://stackoverflow.com/a/19594314
" https://devhints.io/vimscript#vim-isms
let s:activatedhlong = 0
let s:longlinecharlimit = 101 " Allow 100 chars 
function! ToggleHighlightLongLines()
    if s:activatedhlong == 0
        let s:activatedhlong = 1
        " match Search '\%>80v.\+'
        " execute "match Search /\\%" . l:longlinecharlimit . "v.*/"
        " highlight OverLength ctermbg=darkred ctermfg=white guibg=#FFD9D9
        " execute "match OverLength /\\%" . l:longlinecharlimit . "v.*/"
        " To view highlight groups:
        " :so $VIMRUNTIME/syntax/hitest.vim
        execute "match ErrorMsg /\\%" . s:longlinecharlimit . "v.\\+/"
        set cc=101

        augroup vimrc_autocmds
            " autocmd BufEnter * match ErrorMsg /\%75v.*/
            autocmd BufEnter * execute "match ErrorMsg /\\%" . s:longlinecharlimit . "v.\\+/"
            autocmd BufEnter * set cc=101
        augroup END
    else
        let s:activatedhlong = 0
        match none
        set cc=
        augroup vimrc_autocmds
            " autocmd BufEnter * match ErrorMsg /\%75v.*/
            autocmd BufEnter * match none
            autocmd BufEnter * set cc=
        augroup END
    endif
endfunction


let s:activatedh = 0
function! ToggleHighlight()
    if s:activatedh == 0
        let s:activatedh = 1
        set hlsearch
    else
        let s:activatedh = 0
        set nohlsearch
    endif
endfunction
