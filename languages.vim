"au FileType html,python,vim,javascript setl shiftwidth=4
"au FileType html,python,vim,javascript setl tabstop=4
"au FileType java,php setl shiftwidth=4
"au FileType java,php setl tabstop=4

Plugin 'chrisbra/csv.vim'
Plugin 'awk-support.vim'
" Plugin 'vitalk/vim-lesscss'
" Plugin 'tpope/vim-rails'
Plugin 'elzr/vim-json'

" JS {{{
" Plugin 'Enhanced-Javascript-syntax'
Plugin 'Better-Javascript-Indentation'
" Plugin 'indentfolds'
" }}}

" PHP {{{
Plugin 'rayburgemeestre/phpfolding.vim'
"let g:DisableAutoPHPFolding = 1

" Twig
Plugin 'beyondwords/vim-twig'
autocmd BufNewFile,BufRead *.twig.htm set filetype=html.twig

" Deprecated due to performance on big php file
"Plugin 'vim-php/tagbar-phpctags.vim'
"let g:tagbar_phpctags_bin='/usr/local/bin/phpctags'
"let g:tagbar_phpctags_memory_limit = '128M'
"}}}


" golang {{{
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
" }}}
