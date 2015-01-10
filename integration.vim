"========================================}{
" syntax check
Plugin 'scrooloose/syntastic'
"========================================}{
" iterm2 and tmux Ding
Plugin 'sjl/vitality.vim'
"========================================}{
" git
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
"========================================}{
Plugin 'Shougo/vimproc.vim'
map <Leader>vp :exec "VimProcBang " . input("Command: ")<CR>
map <Leader>vl :exec "VimProcRead" . input("Command: ")<CR>
"========================================}{
Plugin 'Shougo/vimshell.vim'
"========================================}{
Plugin 'rking/ag.vim'
" must be after nerdtree
Plugin 'taiansu/nerdtree-ag'
"let g:agprg="ag --nogroup --column"
let g:aghighlight=1
nnoremap <Leader>ag :LAg!
"========================================}{
