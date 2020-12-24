"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"      _          _           _                               "
"   __| |   ___  | |   __ _  | |_    ___                      "
"  / _` |  / _ \ | |  / _` | | __|  / _ \                     "
" | (_| | |  __/ | | | (_| | | |_  | (_) |                    "
"  \__,_|  \___| |_|  \__,_|  \__|  \___/  neovim config file "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



" https://github.com/junegunn/vim-plug
" https://www.chrisatmachine.com/Neovim/01-vim-plug
" https://www.youtube.com/watch?v=QB9V__3VO2s
source $HOME/.config/nvim/vim-plug/plugins.vim

" https://github.com/vim-airline/vim-airline
" https://github.com/vim-airline/vim-airline-themes
" https://www.chrisatmachine.com/Neovim/05-vim-airline/
" https://www.youtube.com/watch?v=-AIdjwIGfqM
source $HOME/.config/nvim/themes/airline.vim
"source $HOME/.config/nvim/lua/status-line.lua
" https://github.com/preservim/nerdtree
source $HOME/.config/nvim/plug-config/nerdtree.vim

" https://github.com/mhinz/vim-startify
" https://www.chrisatmachine.com/Neovim/11-startify/
" https://www.youtube.com/watch?v=9IcXJvoPHCY
source $HOME/.config/nvim/plug-config/start-screen.vim

source $HOME/.config/nvim/settings.vim


"ForKeymaps"
source $HOME/.config/nvim/keys/keys.vim

source $HOME/.config/nvim/plug-config/coc.vim

" This is for lua
luafile $HOME/.config/nvim/lua/plug-colorizer.lua

