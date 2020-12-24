" https://github.com/preservim/nerdtree

" https://github.com/preservim/nerdtree#how-can-i-open-a-nerdtree-automatically-when-vim-starts-up
"autocmd vimenter * NERDTree

" https://github.com/preservim/nerdtree#how-can-i-open-nerdtree-automatically-when-vim-starts-up-on-opening-a-directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

" https://github.com/preservim/nerdtree#how-can-i-map-a-specific-key-or-shortcut-to-open-nerdtree
map <C-n> :NERDTreeToggle<CR>

" https://github.com/preservim/nerdtree#how-can-i-close-vim-if-the-only-window-left-open-is-a-nerdtree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" https://github.com/preservim/nerdtree#how-can-i-change-default-arrows
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
