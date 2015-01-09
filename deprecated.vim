"========================================}{
"Integration
"========================================}{
" tmux pane for commands
"Plugin 'benmills/vimux'
" " Run the current file with rspec
" map <Leader>rb :call VimuxRunCommand("clear; rspec " . bufname("%"))<CR>
" " Prompt for a command to run
" map <Leader>vp :VimuxPromptCommand<CR>
" " Run last command executed by VimuxRunCommand
" map <Leader>vl :VimuxRunLastCommand<CR> " Inspect runner pane
" map <Leader>vi :VimuxInspectRunner<CR>
" " Close vim tmux runner opened by VimuxRunCommand
" map <Leader>vq :VimuxCloseRunner<CR>
" " Interrupt any command running in the runner pane
" map <Leader>vx :VimuxInterruptRunner<CR>
" " Zoom the runner pane (use <bind-key> z to restore runner pane)
" map <Leader>vz :call VimuxZoomRunner()<CR>
"========================================}{
"dash -- cause error when sudo vim, stop using
"Plugin 'rizzatti/funcoo.vim'
"Plugin 'rizzatti/dash.vim'
"Plugin 'rizzatti/greper.vim'
"========================================}{
" run buffer with #! as a script
" Plugin 'bexec'
"========================================}{
"Plugin 'EasyGrep'
"Plugin 'rking/ag.vim'
"let g:agprg='<custom-ag-path-goes-here> --column'
"Plugin 'mileszs/ack.vim'
"let g:ackprg = 'ag --nogroup --nocolor --column'
"nnoremap <Leader>ag :Ack -U -G
"set grepprg=ag\ --vimgrep\ $*
"set grepformat=%f:%l:%c:%m
"========================================}{
" Language
"========================================}{
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'} "yet another zen
"========================================}{
" Deprecated due to performance on big php file
"Plugin 'vim-php/tagbar-phpctags.vim'
"let g:tagbar_phpctags_bin='/usr/local/bin/phpctags'
"let g:tagbar_phpctags_memory_limit = '128M'
"========================================}{
" Completion
"========================================}{
"Plugin 'snipMate'
"Plugin AutoComplPop
"Plugin 'matthias-guenther/vim-autocomplete'
"Plugin 'Valloric/YouCompleteMe'
"========================================}{
" Interface
"========================================}{
"Plugin 'Shougo/unite.vim'
"========================================}{
" Commands
"========================================}{
" CtrlP has MRU
"Plugin 'yegappan/mru'
"nnoremap <silent> <D-r> :MRU<CR>
"========================================}{
" Uncategoried
"========================================}{
" VimWiki
Plugin 'vimwiki'
map <F8> <Plug>Vimwiki2HTML<CR>
map <M-F8> <Plug>VimwikiAll2HTML<CR>

let g:vimwiki_use_mouse = 1

let wiki_1 = {}
let wiki_1.path = 'E:/Profiles/Documents/VimWiki/gwiki/'
let wiki_1.path_html = 'E:/Profiles/Documents/VimWiki/gwiki/html/'
"let wiki_1.html_header = 'E:/Profiles/Documents/VimWiki/gwiki/template/header.tpl'
let wiki_1.html_template = 'E:/Profiles/Documents/VimWiki/gwiki/template/tmpl.html'
"let wiki_1.nested_syntaxes = {'python': 'python', 'c++': 'cpp'}

let wiki_2 = {}
let wiki_2.syntax = 'markdown'
let wiki_2.ext = '.mkd'
let wiki_2.custom_wiki2html = 'E:\programs\dev\Vim\vimfiles\bundle\vimwiki.dev\autoload\vimwiki\customwiki2html.bat'
let wiki_2.path = 'E:/Profiles/Documents/VimWiki/mkd/'
let wiki_2.path_html = 'E:/Profiles/Documents/VimWiki/mkd/html/'

let g:vimwiki_list = [wiki_1, wiki_2]
"========================================}{
