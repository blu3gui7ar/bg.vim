set macmeta
"set guifont=Monaco:h14
set guifont=Source\ Code\ Pro\ For\ Powerline:h14

"Use Experimental Renderer option must be enabled for transparency
" Swipe to move between buffers :D
"map <SwipeLeft> :bprev<CR>
"map <SwipeRight> :bnext<CR>

" FIX: PluginUpdate => git pull: git-sh-setup: No such file or directory in MacVim (OK in non-GUI version of Vim)
if has("gui_macvim")
    set shell=/usr/local/bin/bash\ -l
    "set shell=/usr/bin/login\ -f
    "set shell=/bin/bash\ -c\ /bin/zsh
endif
