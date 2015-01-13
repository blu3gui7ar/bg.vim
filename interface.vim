"========================================}{
Plugin 'sjl/gundo.vim'
nnoremap <F3> :GundoToggle<CR>
"========================================}{
" CtrlP
"Plugin 'FuzzyFinder'
Plugin 'kien/ctrlp.vim'
Plugin 'tacahiroy/ctrlp-funky'
let g:ctrlp_map = '<D-p>'
"let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_cmd = 'CtrlPMRU'
let g:ctrlp_max_depth = 40
let g:ctrlp_max_files = 10000

let g:ctrlp_show_hidden = 0
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }
"let g:ctrlp_user_command = 'find %s -type f'
"let g:ctrlp_root_markers = ['.agignore']
"let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:10,results:30'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_extensions = ['funky']
nnoremap <D-P> :CtrlPFunky<Cr>
" narrow the list down with a word under cursor
nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<Cr>
"========================================}{
Plugin 'scrooloose/nerdtree'
" directory search with ag
Plugin 'taiansu/nerdtree-ag'
map <F2> <ESC>:NERDTreeToggle<CR>
noremap <D-n> <ESC>:NERDTreeToggle<CR>
map <Leader>n <ESC>:NERDTreeFind<CR>
" These prevent accidentally loading files while in the NERDTree panel
"autocmd FileType nerdtree noremap <buffer> <c-left> <nop>
"autocmd FileType nerdtree noremap <buffer> <c-h> <nop>
"autocmd FileType nerdtree noremap <buffer> <c-right> <nop>
"autocmd FileType nerdtree noremap <buffer> <c-l> <nop>
"autocmd FileType nerdtree noremap <buffer> <leader>q <nop>
"autocmd BufEnter * if &modifiable | NERDTreeFind | wincmd p | endif
let NERDTreeWinSize=30
"let NERDTreeIgnore=['CVS']
let NERDTreeChDirMode=2     "setting root dir in NT also sets VIM's cd
let g:NERDTreeBookmarksSort = 0
"========================================}{
Plugin 'majutsushi/tagbar'
" http://adamyoung.net/Exuberant-Ctags-OS-X
" http://www.vim.org/scripts/script.php?script_id=273
let g:tagbar_ctags_bin='/usr/local/bin/ctags'
let g:tagbar_width=26
"noremap <silent> <Leader> :TagbarToggle<CR>
nmap <F5> <ESC>:TagbarToggle<CR>
nnoremap <D-t> <ESC>:TagbarToggle<CR>
"========================================}{
Plugin 'bling/vim-airline'
" need to run install.sh
Plugin 'Lokaltog/powerline-fonts'
let g:airline_powerline_fonts = 1
"Plugin 'bling/vim-bufferline'
"let g:airline#extensions#bufferline#enabled = 1
"let g:airline#extensions#bufferline#overwrite_variables = 1

let g:airline_theme = "molokai"
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'default'
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#buffer_nr_format = '%s:'
let g:airline#extensions#tabline#fnamemod = ':p:t'
let g:airline#extensions#tabline#close_symbol = 'X'
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#hunks#enabled = 1
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#tagbar#enabled = 1
" show airline without nerdtree
set laststatus=2   " Always show the statusline

" alternative
"set statusline=%<%f\ %h%m%r%=%k[%{(&fenc==\"\")?&enc:&fenc}%{(&bomb?\",BOM\":\"\")}]\ %-14.(%l,%c%V%)\ %P
"set highlight=
"========================================}{
