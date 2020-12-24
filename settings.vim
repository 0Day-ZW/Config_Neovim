" :help 'termguicolors'
set termguicolors
set encoding=UTF-8

" This is for blur
"highlight Normal guibg=NONE ctermbg=NONE
" highlight LineNr guibg=NONE ctermbg=NONE
" highlight Pmenu guibg=white guifg=black gui=bold
" highlight Comment gui=bold
" highlight Normal gui=none
" highlight NonText guibg=none
" " :help :syntax-on
set paste
syntax on
syntax enable
set background=dark
let g:solarized_termcolors=256
set list
:let g:airline#extensions#clock#format = '%c'
" https://vim.fandom.com/wiki/Change_the_color_scheme
" https://draculatheme.com/vim
colorscheme palenight
"let g:lightline = { 'colorscheme': 'palenight' }
"let g:airline_theme = "palenight"
"if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
"  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
"endif

"For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
"Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
" < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
"if (has("termguicolors"))
 " set termguicolors
"endif

"let g:palenight_terminal_italics=1
"let g:palenight_color_overrides = {
"\    'black': { 'gui': '#000000', "cterm": "0", "cterm16": "0" },
"\}







set clipboard+=unnamedplus
" https://vim.fandom.com/wiki/Using_the_mouse_for_Vim_in_an_xterm
set mouse=a

" http://vimdoc.sourceforge.net/htmldoc/eval.html#last-position-jump
" https://vim.fandom.com/wiki/Restore_cursor_to_file_position_in_previous_editing_session
" :help last-position-jump
autocmd BufReadPost *
      \ if line("'\"") >= 1 && line("'\"") <= line("$") && &ft !~# 'commit'
      \ |   exe "normal! g`\""
      \ | endif

" :help 'colorcolumn'
"set colorcolumn=10

" https://vim.fandom.com/wiki/Xterm256_color_names_for_console_Vim
"hi ColorColumn ctermbg=darkred guibg=darkred

" https://vim.fandom.com/wiki/Highlight_current_line
" :help 'cursorline'
set cursorline
" :help 'cursorcolumn'
"set cursorcolumn
"hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=blue
"hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
"nnoremap <Leader>c :set cursorline! cursorcolumn!<CR>

" https://vim.fandom.com/wiki/Indenting_source_code
" :help 'expandtab'
"set expandtab
" :help 'tabstop'
"set tabstop=4
" :help 'softtabstop'
" :help 'shiftwidth'

" https://vim.fandom.com/wiki/Override_Colors_in_a_Color_Scheme
" :help highlight-ctermbg
hi Normal ctermbg=none

"Taken from Alireza Amir Samimi's website : https://amirsamimi.ir/vimrc/
" auto complete for ( , " , ' , [ , { 
:inoremap        (  ()<Left>
:inoremap        "  ""<Left>
:inoremap        `  ``<Left>
:inoremap        '  ''<Left>
:inoremap        [  []<Left>
:inoremap      {  {}<Left>
"-----------------------------------------------------------------------------------------------------

"auto comment and uncooment with F6 and F7 key
:autocmd FileType c,cpp,java,scala let b:comment_leader = '// '
:autocmd FileType sh,ruby,python   let b:comment_leader = '# '
:autocmd FileType vim   let b:comment_leader = '" '

:noremap <silent> #6 :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR> " commenting line with F6
:noremap <silent> #7 :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR> " uncommenting line with F7"'')"'')'"'''''
"----------------------------------------------------------------------------------------------------------
:map <F8> :setlocal spell! spelllang=en_us<CR> " check spelling with F8
:set pastetoggle=<F2> " Paste mode toggle with F2 Pastemode disable auto-indent and bracket auto-compelation and it helps you to paste code fro elsewhere .


" This Is For : Use space instead of fever and each fever is equivalent to 8 spaces. Use the tab so you do not get tired for the distance :)
set tabstop=10 shiftwidth=8 expandtab



" Default value is "normal", Setting this option to "high" or "low" does use the
" same Solarized palette but simply shifts some values up or down in order to
" expand or compress the tonal range displayed.
let g:neosolarized_contrast = "normal"

" Special characters such as trailing whitespace, tabs, newlines, when displayed
" using ":set list" can be set to one of three levels depending on your needs.
" Default value is "normal". Provide "high" and "low" options.
let g:neosolarized_visibility = "normal"

" I make vertSplitBar a transparent background color. If you like the origin
" solarized vertSplitBar style more, set this value to 0.
let g:neosolarized_vertSplitBgTrans = 1


" Adding Space
"au BufRead,BufNewFile *.sh,*.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
" highlight BadWhitespace ctermbg=red guibg=darkred


" Enable folding
"set foldmethod=indent
"set foldlevel=99


" If you wish to enable/disable NeoSolarized from displaying bold, underlined
" or italicized" typefaces, simply assign 1 or 0 to the appropriate variable.
" Default values:
let g:neosolarized_bold = 1
let g:neosolarized_underline = 1
let g:neosolarized_italic = 0
let g:airline_theme='dracula'

" Used to enable/disable "bold as bright" in Neovim terminal. If colors of bold
" text output by commands like `ls` aren't what you expect, you might want to
" try disabling this option. Default value:
let g:neosolarized_termBoldAsBright = 1
"Add By me .:)
" syntax on
" set nocompatible
" set noerrorbells                         " no error bells
"set tabstop=4 softtabstop=2              " tabstops as 4
" set shiftwidth=4
"set expandtab
" set smartindent
" set nu
" set nowrap
" set smartcase
" set noswapfile
" set nobackup
" set undodir=~/.vim/undodir              " set a undo directory 
" set undofile
" set incsearch
"set number relativenumber               " sets relative line number
" set cursorline                          " highliht current line
" set cmdheight=1
" set ignorecase                          " ignore case while searching
" set laststatus=2                        " always show status line
"set termguicolors                       " true colors
"set clipboard+=unnamedplus              " set clipboard to system clipboard
"set path+=**                            " ** for recursive search on all dir
"set wildmenu
filetype plugin indent on
filetype plugin on
set ttyfast                             "for faster scrolling
set number
set lazyredraw                          "faster scrolling
"guibg=none



"Config NNN For Neovim

" Opens the nnn window in a split
let g:nnn#layout = 'new' " or vnew, tabnew etc.

" Or pass a dictionary with window size
let g:nnn#layout = { 'left': '~20%' } " or right, up, down

" Floating window (neovim latest and vim with patch 8.2.191)
let g:nnn#layout = { 'window': { 'width': 0.9, 'height': 0.6, 'highlight': 'Debug' } }

let g:nnn#action = {
      \ '<c-t>': 'tab split',
      \ '<c-x>': 'split',
      \ '<c-v>': 'vsplit' }

