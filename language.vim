"========================================}{
Plugin 'tpope/vim-surround'
"========================================}{
Plugin 'chrisbra/csv.vim'
"========================================}{
Plugin 'awk-support.vim'
"========================================}{
Plugin 'elzr/vim-json'
"========================================}{
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
"========================================}{
Plugin 'derekwyatt/vim-scala'
"========================================}{
" Zen
Plugin 'mattn/emmet-vim'
" activation key <C-Y><leader>
"let g:user_zen_expandabbr_key = '<c-j>'
"let g:use_zen_complete_tag = 1
"let g:no_html_toolbar = 'yes'
"let g:html_tag_case = 'lowercase'
"========================================}{
" PHP
Plugin 'rayburgemeestre/phpfolding.vim'
"let g:DisableAutoPHPFolding = 1
"========================================}{
" Twig
Plugin 'beyondwords/vim-twig'
autocmd BufNewFile,BufRead *.twig.htm set filetype=html.twig
"========================================}{
" golang
au FileType go nmap <Leader>ct :! gotags -R . > tags<CR>
Plugin 'fatih/vim-go'
au FileType go nmap <Leader>s <Plug>(go-implements)
au FileType go nmap <Leader>i <Plug>(go-info)
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
au FileType go nmap <Leader>gb <Plug>(go-doc-browser)
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)
au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)
au FileType go nmap <Leader>e <Plug>(go-rename)

let g:go_play_open_browser = 0
"let g:go_fmt_fail_silently = 1
let g:go_fmt_command = "goimports"
"let g:go_fmt_autosave = 0
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1

" go tagbar
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : '~/.go/bin/gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }
"========================================}{
