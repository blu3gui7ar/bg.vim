" inside doc
Plugin 'Lokaltog/vim-easymotion'
Plugin 'matchit.zip'
Plugin 'terryma/vim-smooth-scroll'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'terryma/vim-expand-region'

" in workspace {{{
"Plugin 'Shougo/unite.vim'

" CtrlP
Plugin 'L9'
"Plugin 'FuzzyFinder'
Plugin 'kien/ctrlp.vim'
Plugin 'tacahiroy/ctrlp-funky'
let g:ctrlp_map = '<D-p>'
let g:ctrlp_cmd = 'CtrlP'
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
" }}}

" search {{{
"Plugin 'EasyGrep'
"Plugin 'rking/ag.vim'
"let g:agprg='<custom-ag-path-goes-here> --column'
Plugin 'mileszs/ack.vim'
let g:ackprg = 'ag --nogroup --nocolor --column'
nnoremap <Leader>ag :Ack -U -G
"set grepprg=ag\ --vimgrep\ $*
"set grepformat=%f:%l:%c:%m
"}}}
