"========================================}{
" syntax check
Plugin 'scrooloose/syntastic'
" avoid close quickfix/location-list on error on <CR>
" for other plugins, E.g.  ag.vim
" use :Errors to open syntastic error list
let g:syntastic_auto_loc_list = 0
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
"let g:agprg="ag --nogroup --column"
let g:aghighlight=1
nnoremap <Leader>ag :LAg!
"========================================}{
