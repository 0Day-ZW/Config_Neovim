" https://github.com/mhinz/vim-startify
" https://www.chrisatmachine.com/Neovim/11-startify/
" https://www.youtube.com/watch?v=9IcXJvoPHCY



"let g:startify_custom_header = [
"        \ '         _          _           _           ',
"        \ '      __| |   ___  | |   __ _  | |_    ___  ',
"        \ '     / _` |  / _ \ | |  / _` | | __|  / _ \ ', .l,
"        \ '    | (_| | |  __/ | | | (_| | | |_  | (_) |',
"        \ '     \__,_|  \___| |_|  \__,_|  \__|  \___/ ',
"        \]

let g:startify_session_dir = '~/.config/nvim/sessions'

" https://github.com/mhinz/vim-startify/wiki/Example-configurations#show-modified-and-untracked-git-files

" returns all modified files of the current git repo
" `2>/dev/null` makes the command fail quietly, so that when we are not
" in a git repo, the list will be empty
function! s:gitModified()
    let files = systemlist('git ls-files -m 2>/dev/null')
    return map(files, "{'line': v:val, 'path': v:val}")
endfunction

" same as above, but show untracked files, honouring .gitignore
function! s:gitUntracked()
    let files = systemlist('git ls-files -o --exclude-standard 2>/dev/null')
    return map(files, "{'line': v:val, 'path': v:val}")
endfunction

" https://github.com/mhinz/vim-startify/wiki/Example-configurations#display-nerdtree-bookmarks
" Read ~/.NERDTreeBookmarks file and takes its second column
function! s:nerdtreeBookmarks()
    let bookmarks = systemlist("cut -d' ' -f 2 ~/.NERDTreeBookmarks")
    let bookmarks = bookmarks[0:-2] " Slices an empty last line
    return map(bookmarks, "{'line': v:val, 'path': v:val}")
endfunction

let g:startify_lists = [
        \ { 'type': 'files',     'header': ['   Files']            },
        \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
        \ { 'type': 'sessions',  'header': ['   Sessions']       },
        \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
        \ { 'type': function('s:gitModified'),  'header': ['   git modified']},
        \ { 'type': function('s:gitUntracked'), 'header': ['   git untracked']},
        \ { 'type': 'commands',  'header': ['   Commands']       },
        \ { 'type': function('s:nerdtreeBookmarks'), 'header': ['   NERDTree Bookmarks']},
        \ ]

let g:startify_session_autoload = 1
let g:startify_session_delete_buffers = 1
let g:startify_change_to_vcs_root = 1
let g:startify_fortune_use_unicode = 1
let g:startify_session_persistence = 1

"let g:webdevicons_enable_startify = 1
"function! StartifyEntryFormat()
"        return 'WebDevIconsGetFileTypeSymbol(absolute_path) ." ". entry_path'
"    endfunction

let g:startify_bookmarks = [
            \ { 'i': '~/.config/nvim/init.vim' },
            \ ]






"let g:startify_custom_header = [
""        \ '         _          _           _           ',
"        \ '      __| |   ___  | |   __ _  | |_    ___  ',
"        "        \ '     / _` |  / _ \ | |  / _` | | __|  / _ \ ', .l,
"        "        \ '    | _| | |  __/ | | | ((_| | | |_  | (_) |',
"        "        \ '     \__,_|  \___| |_|  \__,_|  \__|  \___/ ',
"        "        \]
"        '))']
