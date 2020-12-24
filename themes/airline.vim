" https://github.com/vim-airline/vim-airline
" https://github.com/vim-airline/vim-airline-themes
" https://www.chrisatmachine.com/Neovim/05-vim-airline/
" https://www.youtube.com/watch?v=-AIdjwIGfqM

" enable tabline
let g:airline#extensions#tabline#enabled = 1
" https://www.nerdfonts.com/cheat-sheet
"let g:airline#extensions#tabline#left_sep = ''
"let g:airline#extensions#tabline#left_alt_sep = ''
"let g:airline#extensions#tabline#right_sep = ''
"let g:airline#extensions#tabline#right_alt_sep = ''
let g:airline#extensions#tabline#formatter = 'unique_tail'

" enable powerline fonts
let g:airline_powerline_fonts = 1
"let g:airline_left_sep = ''
"let g:airline_right_sep = ''

" Switch to your current theme
" https://github.com/vim-airline/vim-airline/wiki/Screenshots
"let g:airline_theme = 'onedark'
"let g:airline_theme = 'deus'
"let g:airline_theme = 'molokai'
"let g:airline_theme = 'bubblegum'
"let g:airline_theme = 'base16'
"let g:airline_theme = 'distinguished'
"let g:airline_theme = 'minimalist'
"let g:airline_theme = 'violet'

" Always show tabs
"set showtabline=2

" We don't need to see things like -- INSERT -- anymore
set noshowmode
