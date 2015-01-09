" Window Management

" NerdTree {{{
Plugin 'scrooloose/nerdtree'
map <F2> <ESC>:NERDTreeToggle<CR>
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
" }}}

" Tagbar {{{
Plugin 'majutsushi/tagbar'
" http://adamyoung.net/Exuberant-Ctags-OS-X
" http://www.vim.org/scripts/script.php?script_id=273
let g:tagbar_ctags_bin='/usr/local/bin/ctags'
let g:tagbar_width=26
"noremap <silent> <Leader> :TagbarToggle<CR>
nmap <F5> <ESC>:TagbarToggle<CR>
" }}}

" SelectBuf {{{ not used that much, use ctrlp instead
" Plugin 'SelectBuf'
" let g:selBufSplitType = "topleft"
" }}}

"=====================================================================
" Key Bindings
function! ToggleNERDTreeAndTagbar()
    let w:jumpbacktohere = 1

    " Detect which plugins are open
    if exists('t:NERDTreeBufName')
        let nerdtree_open = bufwinnr(t:NERDTreeBufName) != -1
    else
        let nerdtree_open = 0
    endif
    let tagbar_open = bufwinnr('__Tagbar__') != -1

    " Perform the appropriate action
    if nerdtree_open && tagbar_open
        NERDTreeClose
        TagbarClose
    elseif nerdtree_open
        TagbarOpen
    elseif tagbar_open
        NERDTree
    else
        NERDTree
        TagbarOpen
    endif

    " Jump back to the original window
    for window in range(1, winnr('$'))
        execute window . 'wincmd w'
        if exists('w:jumpbacktohere')
            unlet w:jumpbacktohere
            break
        endif
    endfor
endfunction
nnoremap <F8> :call ToggleNERDTreeAndTagbar()<CR>
function! BgBPrev()
    let l:ignoreft = ["qf","godoc","nerdtree","tagbar"]
    if index(l:ignoreft, &filetype) < 0
        bprev
    endif
endfunction
function! BgBNext()
    let l:ignoreft = ["qf","godoc","nerdtree","tagbar"]
    if index(l:ignoreft, &filetype) < 0
        bnext
    endif
endfunction
noremap <silent> <C-left> :call BgBPrev()<CR>
noremap <silent> <C-h> :call BgBPrev()<CR>
noremap <silent> <C-right> :call BgBNext()<CR>
noremap <silent> <C-l>  :call BgBNext()<CR>
function! BgQuitBuffer()
    let l:ignoreft = ["qf","godoc","nerdtree","tagbar"]
    if index(l:ignoreft, &filetype) >= 0
        quit
        return
    endif

    let l:cbnr = bufnr('%')
    bp
    while index(l:ignoreft, &filetype) >= 0
        bp
    endwhile
    if l:cbnr != bufnr('%')
        exec 'bd' . l:cbnr
    endif
endfunction
nnoremap <silent> <leader>q :call BgQuitBuffer()<CR>

"=====================================================================

" Color {{{
Plugin 'flazz/vim-colorschemes'
Plugin 'fatih/molokai'
"}}}


" StatusLine {{{
"Plugin 'Lokaltog/powerline'
Plugin 'bling/vim-airline'
"Plugin 'bling/vim-bufferline'
"let g:airline#extensions#bufferline#enabled = 1
"let g:airline#extensions#bufferline#overwrite_variables = 1

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'default'
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#buffer_nr_format = '%s:'
let g:airline#extensions#tabline#fnamemod = ':p:t'
let g:airline#extensions#tabline#close_symbol = 'X'
"set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show unicode glyphs
" Note: If you're using an 88/256-color terminal but still don't see the colored statusline, you may have to set the following option as well: >
"set t_Co=256 " Explicitly tell vim that the terminal supports 256 colors

" alternative
"set statusline=%<%f\ %h%m%r%=%k[%{(&fenc==\"\")?&enc:&fenc}%{(&bomb?\",BOM\":\"\")}]\ %-14.(%l,%c%V%)\ %P
"set highlight=
"}}}
