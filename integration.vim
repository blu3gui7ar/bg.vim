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
map <Leader>vp :VimProcBang<CR>
map <Leader>vr :VimProcRead<CR>
"========================================}{
Plugin 'rking/ag.vim'
let g:agprg='ag --nogroup --nocolor --column'
nnoremap <Leader>ag :Ag -U -G
"========================================}{
