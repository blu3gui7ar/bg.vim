"========================================}{
" syntax check
Plugin 'scrooloose/syntastic'
" avoid close quickfix/location-list on error on <CR>
" for other plugins, E.g.  ag.vim
" use :Errors to open syntastic error list
let g:syntastic_auto_loc_list = 0
let g:syntastic_mode_map = {
            \ "mode": "active",
            \ "active_filetypes": [],
            \ "passive_filetypes": ["php"] }
"========================================}{
" iterm2 and tmux Ding
Plugin 'sjl/vitality.vim'
"========================================}{
" git
" U for revert file from git, undocumented
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
let g:ag_highlight=1
" use Ag! for quickfix instead of LAg! for location-list
" to avoid change Nerdtree windows
nnoremap <Leader>ag :Ag!
"========================================}{
