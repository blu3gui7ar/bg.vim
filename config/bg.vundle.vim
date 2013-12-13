" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'
"Bundle 'rstacruz/sparkup', {'rtp': 'vim/'} "y a zen
" Emmet {{{1
Bundle 'mattn/emmet-vim'
"let g:user_zen_expandabbr_key = '<c-j>'
"let g:use_zen_complete_tag = 1
"let g:no_html_toolbar = 'yes'
"let g:html_tag_case = 'lowercase'
" }}}
Bundle 'flazz/vim-colorschemes'
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
" StatusLine {{{1
Bundle 'bling/vim-airline'
"Bundle 'Lokaltog/powerline'
set laststatus=2   " Always show the statusline
"set encoding=utf-8 " Necessary to show unicode glyphs
" Note: If you're using an 88/256-color terminal but still don't see the colored statusline, you may have to set the following option as well: >
"set t_Co=256 " Explicitly tell vim that the terminal supports 256 colors
" }}}
Bundle 'rayburgemeestre/phpfolding.vim'
"let g:DisableAutoPHPFolding = 1
Bundle 'vitalk/vim-lesscss'
" NerdTree {{{1
Bundle 'scrooloose/nerdtree'
map <F2> <ESC>:NERDTreeToggle<CR>
let NERDTreeWinSize=30
let NERDTreeIgnore=['CVS']
let NERDTreeChDirMode=2     "setting root dir in NT also sets VIM's cd
"noremap <silent> <Leader>n :NERDTreeToggle<CR>
" }}}
" Tagbar {{{1
Bundle 'majutsushi/tagbar'
" http://adamyoung.net/Exuberant-Ctags-OS-X
" http://www.vim.org/scripts/script.php?script_id=273
let g:tagbar_ctags_bin='/usr/local/bin/ctags'
let g:tagbar_width=26
"noremap <silent> <Leader> :TagbarToggle<CR>
nmap <F5> <ESC>:TagbarToggle<CR>
"Bundle 'vim-php/tagbar-phpctags.vim'
"let g:tagbar_phpctags_bin='/usr/local/bin/phpctags'
"let g:tagbar_phpctags_memory_limit = '128M'
" }}}
" SelectBuf {{{1
Bundle 'SelectBuf'
" let g:selBufSplitType = "topleft"
" }}}
" WM {{{1
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
" }}}
Bundle 'matthias-guenther/vim-autocomplete'
Bundle 'Valloric/YouCompleteMe'
Bundle 'Shougo/unite.vim'
Bundle 'benmills/vimux'
"{{{
"Bundle 'rking/ag.vim'
"let g:agprg='<custom-ag-path-goes-here> --column'
Bundle 'mileszs/ack.vim'
let g:ackprg = 'ag --nogroup --nocolor --column'
"}}}
Bundle 'scrooloose/syntastic'
" CtrlP {{{1 
Bundle 'L9'
"Bundle 'FuzzyFinder'
Bundle 'kien/ctrlp.vim'
Bundle 'tacahiroy/ctrlp-funky'
let g:ctrlp_map = '<D-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_max_depth = 40
let g:ctrlp_max_files = 3000

let g:ctrlp_dotfiles = 0
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }
"let g:ctrlp_user_command = 'find %s -type f'
let g:ctrlp_extensions = ['funky']
nnoremap <D-P> :CtrlPFunky<Cr> 
" narrow the list down with a word under cursor
nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<Cr>
" }}}
" easyalign {{{1
Bundle 'junegunn/vim-easy-align'
vnoremap <silent> <Enter> :EasyAlign<Enter>
""ino <c-k> <c-r>=TriggerSnippet()<cr>
""snor <c-k> <esc>i<right><c-r>=TriggerSnippet()<cr>
" }}}
Bundle 'chrisbra/csv.vim'
Bundle 'awk-support.vim'
Bundle 'matchit.zip'
"Bundle 'puppet'
"Bundle 'tpope/vim-rails.git'
"Bundle 'vim-json'
"Bundle 'bexec'
" YankRing {{{1
Bundle 'YankRing.vim'
nnoremap <silent> <F4> :YRShow<CR>
nnoremap <silent> <leader>yr :YRShow<CR>
" }}}
Bundle 'EasyGrep'
Bundle 'genutils'
Bundle 'snipMate'
Bundle 'bronson/vim-trailing-whitespace'

" VimWiki {{{1
" Bundle 'vimwiki'
" map <F8> <Plug>Vimwiki2HTML<CR>
" map <M-F8> <Plug>VimwikiAll2HTML<CR>
"
" let g:vimwiki_use_mouse = 1
"
" let wiki_1 = {}
" let wiki_1.path = 'E:/Profiles/Documents/VimWiki/gwiki/'
" let wiki_1.path_html = 'E:/Profiles/Documents/VimWiki/gwiki/html/'
" "let wiki_1.html_header = 'E:/Profiles/Documents/VimWiki/gwiki/template/header.tpl'
" let wiki_1.html_template = 'E:/Profiles/Documents/VimWiki/gwiki/template/tmpl.html'
" "let wiki_1.nested_syntaxes = {'python': 'python', 'c++': 'cpp'}
"
" let wiki_2 = {}
" let wiki_2.syntax = 'markdown'
" let wiki_2.ext = '.mkd'
" let wiki_2.custom_wiki2html = 'E:\programs\dev\Vim\vimfiles\bundle\vimwiki.dev\autoload\vimwiki\customwiki2html.bat'
" let wiki_2.path = 'E:/Profiles/Documents/VimWiki/mkd/'
" let wiki_2.path_html = 'E:/Profiles/Documents/VimWiki/mkd/html/'
"
" let g:vimwiki_list = [wiki_1, wiki_2]
" }}}

" non github repos
" Bundle 'git://git.wincent.com/command-t.git'

" git repos on your local machine (ie. when working on your own plugin)
" Bundle 'file:///Users/gmarik/path/to/plugin'

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
