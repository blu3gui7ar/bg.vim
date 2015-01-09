"========================================}{
" clip board
Plugin 'YankRing.vim'
nnoremap <silent> <F4> :YRShow<CR>
nnoremap <silent> <D-y> :YRShow<CR>
let g:yankring_replace_n_pkey = '<m-p>'
let g:yankring_replace_n_nkey = '<m-n>'
"========================================}{
"code format - easy align
Plugin 'junegunn/vim-easy-align'
vnoremap <silent> <Enter> :EasyAlign<Enter>
"========================================}{
Plugin 'Lokaltog/vim-easymotion'
"========================================}{
Plugin 'matchit.zip'
"========================================}{
"Plugin 'terryma/vim-smooth-scroll'
"noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 3, 2)<CR>
"noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 3, 2)<CR>
"noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 3, 4)<CR>
"noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 3, 4)<CR>

" need to 'v' to normal mode before editing using i I a ...
Plugin 'terryma/vim-multiple-cursors'
let g:multi_cursor_start_key='<C-m>'

Plugin 'terryma/vim-expand-region'
"map + <Plug>(expand_region_expand)
"map _ <Plug>(expand_region_shrink)
"========================================}{
Plugin 'yegappan/mru'
nnoremap <silent> <D-r> :MRU<CR>
"========================================}{
