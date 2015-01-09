"========================================}{
" syntax check
Plugin 'scrooloose/syntastic'
"========================================}{
" iterm2 and tmux Ding
Plugin 'sjl/vitality.vim'
"========================================}{
Plugin 'tpope/vim-fugitive'
"========================================}{
Plugin 'Shougo/vimproc.vim'
map <Leader>vp :exec "VimProcBang " . input("Command: ")<CR>
map <Leader>vl :exec "VimProcRead" . input("Command: ")<CR>
"========================================}{
Plugin 'rking/ag.vim'
let g:agprg='ag --nogroup --nocolor --column'
nnoremap <Leader>ag :Ag -U -G
"========================================}{
