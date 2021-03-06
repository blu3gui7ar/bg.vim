"au FileType html,python,vim,javascript setl shiftwidth=4
"au FileType html,python,vim,javascript setl tabstop=4
"au FileType java,php setl shiftwidth=4
"au FileType java,php setl tabstop=4

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
    if !&modifiable
        return
    endif
    let l:cbnr = bufnr('%')
    bprev
    while !&modifiable && l:cbnr != bufnr('%')
        bprev
    endwhile
endfunction
function! BgBNext()
    if !&modifiable
        return
    endif
    let l:cbnr = bufnr('%')
    bnext
    while !&modifiable && l:cbnr != bufnr('%')
        bnext
    endwhile
endfunction
noremap <silent> <C-left> :call BgBPrev()<CR>
noremap <silent> <C-h> :call BgBPrev()<CR>
noremap <silent> <C-right> :call BgBNext()<CR>
noremap <silent> <C-l>  :call BgBNext()<CR>
function! BgQuitBuffer()
    if !&modifiable
        q
        return
    endif
    let l:cbnr = bufnr('%')
    bprev
    while !&modifiable
        if l:cbnr == bufnr('%')
            break
        endif
        bprev
    endwhile
    if l:cbnr != bufnr('%')
        exec 'bd' . l:cbnr
    endif
endfunction
nnoremap <silent> <leader>q :call BgQuitBuffer()<CR>
"=====================================================================
"type S, then type what you're looking for, a /, and what to replace it with
nnoremap <leader>S :%s//g<LEFT><LEFT>
vnoremap <leader>S :s//g<LEFT><LEFT>
"=====================================================================
" Opens an edit command with the path of the currently edited file filled in Normal mode: <Leader>ee
noremap <Leader>ee :e <C-R>=expand("%:p:h") . "/" <CR>
" Opens a tab edit command with the path of the currently edited file filled in
" Normal mode: <Leader>t
noremap <Leader>et :tabe <C-R>=expand("%:p:h") . "/" <CR>
"=====================================================================
nnoremap <leader>bg <ESC>:edit ~/.vim/config/bg.vimrc<CR>
" Edit and Reload .vimrc files
nnoremap <silent> <Leader>es :so $MYVIMRC<CR>
"=====================================================================
"Following line clears the search highlights when pressing ,b
nnoremap <leader>nl :nohlsearch<CR>
"=====================================================================
"set tags=tags;
"map <F12> ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
nnoremap <Leader>ct :! /usr/local/bin/ctags -R --exclude=node_modules *<CR>
"=====================================================================
" goto quick fix errors
nnoremap <C-P> :cp<cr>
nnoremap <C-N> :cn<cr>
"=====================================================================
" :Man for K
runtime! ftplugin/man.vim
nmap K <leader>K
"=====================================================================
" Folding easy
nmap <C-_> zA
"=====================================================================
" change dir quick
nnoremap cd :call BgCD()<CR>
function! BgCD()
    let l:path = input("Target:", expand("%:p:h"), "dir")
    if l:path != ""
        exec "cd ". l:path
        NERDTreeCWD
endif
endfunction
"=====================================================================
" j k with sticky cursor
nmap <C-K> k<C-Y>
nmap <C-J> j<C-E>
"=====================================================================
