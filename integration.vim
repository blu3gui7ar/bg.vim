"========================================}{
" syntax check
Plugin 'scrooloose/syntastic'
"========================================}{
" iterm2 and tmux Ding
Plugin 'sjl/vitality.vim'
"========================================}{
" tmux pane for commands 
Plugin 'benmills/vimux'
 " Run the current file with rspec
 map <Leader>rb :call VimuxRunCommand("clear; rspec " . bufname("%"))<CR>
 " Prompt for a command to run
 map <Leader>vp :VimuxPromptCommand<CR>
 " Run last command executed by VimuxRunCommand
 map <Leader>vl :VimuxRunLastCommand<CR> " Inspect runner pane
 map <Leader>vi :VimuxInspectRunner<CR>
 " Close vim tmux runner opened by VimuxRunCommand
 map <Leader>vq :VimuxCloseRunner<CR>
 " Interrupt any command running in the runner pane
 map <Leader>vx :VimuxInterruptRunner<CR>
 " Zoom the runner pane (use <bind-key> z to restore runner pane)
 map <Leader>vz :call VimuxZoomRunner()<CR>
"========================================}{
Plugin 'tpope/vim-fugitive'
"========================================}{
Plugin 'Shougo/vimproc.vim'
"========================================}{
Plugin 'rking/ag.vim'
let g:agprg='ag --nogroup --nocolor --column'
nnoremap <Leader>ag :Ag -U -G
"========================================}{
