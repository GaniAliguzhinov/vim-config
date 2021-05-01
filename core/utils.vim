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
