let g:airline_theme='deus'
" Tabline settings
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
" Show buffer number for easier switching between buffer,
" see https://github.com/vim-airline/vim-airline/issues/1149
let g:airline#extensions#tabline#buffer_nr_show = 1
" Buffer number display format
let g:airline#extensions#tabline#buffer_nr_format = '%s. '
" Whether to show function or other tags on status line
let g:airline#extensions#vista#enabled = 1
let g:airline#extensions#gutentags#enabled = 1
" Do not show search index in statusline since it is shown on command line
let g:airline#extensions#anzu#enabled = 0
" Enable vim-airline extension for vim-lsp
let g:airline#extensions#lsp#enabled = 1
" Skip empty sections if there are nothing to show,
" extracted from https://vi.stackexchange.com/a/9637/15292
let g:airline_skip_empty_sections = 1
" Whether to use powerline symbols, see https://vi.stackexchange.com/q/3359/15292
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.spell = 'Ꞩ'
" Only show git hunks which are non-zero
let g:airline#extensions#hunks#non_zero_only = 1
" Speed up airline
let g:airline_highlighting_cache = 1
