" https://github.com/junegunn/vim-plug#example
" https://www.chrisatmachine.com/Neovim/01-vim-plug
" https://www.youtube.com/watch?v=QB9V__3VO2s

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.config/nvim/plugins/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
" Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
" Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
" Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
" On-demand loading
" Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
" Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
" Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
" Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
" Plug '~/my-prototype-plugin'
" Color | Themes | Scheme

Plug 'dracula/vim', { 'as': 'dracula' }

Plug 'morhetz/gruvbox'

Plug 'michaelmalick/vim-colors-bluedrake'

Plug 'joshdick/onedark.vim'

Plug 'overcache/NeoSolarized'

Plug  'altercation/solarized'

Plug 'arcticicestudio/nord-vim'

Plug 'drewtempelmeyer/palenight.vim'

Plug 'relastle/bluewery.vim'

Plug 'enricobacis/vim-airline-clock'

Plug 'norcalli/nvim-colorizer.lua'

Plug 'vim-airline/vim-airline-themes'

Plug 'tomasr/molokai'



Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

Plug 'lervag/vimtex'


Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'HerringtonDarkholme/yats.vim' " TS Syntax
Plug 'ctrlpvim/ctrlp.vim'
Plug 'airblade/vim-gitgutter'
Plug 'josa42/coc-sh'



Plug 'vim-airline/vim-airline'

Plug 'honza/vim-snippets'


Plug 'sheerun/vim-polyglot'

Plug 'arzg/vim-sh'



Plug 'ryanoasis/vim-devicons'


Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update


"Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'sainnhe/sonokai'



Plug 'mhinz/vim-startify'


Plug 'neoclide/coc.nvim', {'branch': 'release'}

" using vim-plug 
Plug 'mcchrish/nnn.vim'
" https://github.com/preservim/nerdtree
Plug 'preservim/nerdtree'
Plug 'lewis6991/moonlight.vim'
" Initialize plugin system
call plug#end()
