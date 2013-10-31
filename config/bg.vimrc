source ~/.vim/config/bg.vundle.vim

"ruby
" let s:ruby_path = 'D:/Programs/env/Ruby192/bin'
" let PATH = 'D:/Programs/env/Ruby192/bin;'.$PATH

let g:mapleader = "," "设置全局快捷键为,

"set statusline=%<%f\ %h%m%r%=%k[%{(&fenc==\"\")?&enc:&fenc}%{(&bomb?\",BOM\":\"\")}]\ %-14.(%l,%c%V%)\ %P
"set highlight=


" disable VI's compatible mode..
set nocompatible
 
set encoding=utf-8
"set termencoding=utf-8 " no use for win32 gui
map <C-F1> <ESC>:simalt~<CR>
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,gbk,default,latin1
set tenc=utf-8

source $VIMRUNTIME/delmenu.vim
language messages zh_CN.utf-8

 
" use chinese help
set helplang=cn

"set gui options
if has("gui_running")
 "set guifont=Consolas:h14
    set guifont=Inconsolata:h16
    set cursorline 

    "colorscheme ir_black
    "colorscheme desert 
    "colorscheme solarized
    "colorscheme molokai 
    "colorscheme neon 
    colorscheme desertEx 

    " Show tabs and newline characters with ,s
    nmap <Leader>s :set list!<CR>
    set listchars=tab:▸\ ,eol:¬
    "Invisible character colors
    highlight NonText guifg=#4a4a59
    highlight SpecialKey guifg=#4a4a59
else
    set t_Co=256
    "colorscheme Mustang             "This theme actually works in 256, ir_black doesn't
    "colorscheme molokai 
    colorscheme neon 
endif

if has("gui_macvim") "Use Experimental Renderer option must be enabled for transparency
    set guifont=Monaco:h14
    " Swipe to move between bufers :D
    map <SwipeLeft> :bprev<CR>
    map <SwipeRight> :bnext<CR>
endif

set background=dark
" Enable syntax highlight
syntax enable
 
" Show line number
set nu
 
" show matching bracets
set showmatch
 
" Basic editing options
set expandtab
set shiftwidth=4
set tabstop=4

"au FileType html,python,vim,javascript setl shiftwidth=4
"au FileType html,python,vim,javascript setl tabstop=4
"au FileType java,php setl shiftwidth=4
"au FileType java,php setl tabstop=4
 
set smarttab
set lbr
set tw=0
 
"Auto indent
set ai
 
" Smart indet
set si
 
" C-style indeting
set cindent
 
" Wrap lines
set wrap

" Change Dir to Current file
"set autochdir 

"set tags=tags; 
"map <F12> ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
map <Leader>ct :! /usr/local/bin/ctags -R *<CR>

" general
" Sets how many lines of history VIM har to remember
set history=400
 
" Set to auto read when a file is changed from the outside
set autoread
 
" Have the mouse enabled all the time:
set mouse=a
 
" Do not redraw, when running macros.. lazyredraw
set lz
 
" set 7 lines to the curors - when moving vertical..
set so=7
 
" The commandbar is 2 high
set cmdheight=2
 
" Change buffer - without saving
set hid
 
" Ignore case when searching
" set ignorecase
set incsearch
 
" Set magic on
set magic
 
" No sound on errors.
set noerrorbells
set novisualbell
set t_vb=
 
" How many tenths of a second to blink
set mat=4
 
" Highlight search things
set hlsearch
"Following line clears the search highlights when pressing Lb
nnoremap <leader>b :nohlsearch<CR>
 
" Turn backup off
set nobackup
set nowb
set noswapfile
 
" smart backspace
set backspace=start,indent,eol
 
" switch buffers with Tab
"map <C-Tab> :bn<CR>
"map <S-Tab> :bp<CR>
"------  Buffers  ------
" Ctrl Left & Right move between buffers
noremap <silent> <C-left> :bprev<CR>
noremap <silent> <C-h> :bprev<CR>
noremap <silent> <C-right> :bnext<CR>
noremap <silent> <C-l> :bnext<CR>
" These prevent accidentally loading files while in the NERDTree panel
autocmd FileType nerdtree noremap <buffer> <c-left> <nop>
autocmd FileType nerdtree noremap <buffer> <c-h> <nop>
autocmd FileType nerdtree noremap <buffer> <c-right> <nop>
autocmd FileType nerdtree noremap <buffer> <c-l> <nop>

map <leader>bg <ESC>:edit ~/.vim/config/bg._vimrc<CR>
" Edit and Reload .vimrc files
nmap <silent> <Leader>ev :e $MYVIMRC<CR>
nmap <silent> <Leader>es :so $MYVIMRC<CR>

set foldmethod=marker
" save folding
"au BufWinLeave * silent! mkview
"au BufWinEnter * silent! loadview

filetype plugin indent on

"Ignore these files when completing names
set wildignore=.svn,CVS,.git,*.o,*.a,*.class,*.mo,*.la,*.so,*.obj,*.swp,*.jpg,*.png,*.xpm,*.gif

"------  Replacing ------
"type S, then type what you're looking for, a /, and what to replace it with
nmap S :%s//g<LEFT><LEFT>
vmap S :s//g<LEFT><LEFT>


" Opens an edit command with the path of the currently edited file filled in Normal mode: <Leader>ee
map <Leader>ee :e <C-R>=expand("%:p:h") . "/" <CR>

" Opens a tab edit command with the path of the currently edited file filled in
" Normal mode: <Leader>t
map <Leader>et :tabe <C-R>=expand("%:p:h") . "/" <CR>


"nmap <silent> <unique> <leader>xx <Plug>SelectBuf
