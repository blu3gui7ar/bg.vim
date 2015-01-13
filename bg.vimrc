" set global <leader>
let g:mapleader = ","
source ~/.vim/config/bg.vundle.vim

set encoding=utf-8 " Necessary to show unicode glyphs
"set termencoding=utf-8 " no use for win32 gui
map <C-F1> <ESC>:simalt~<CR>
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,gbk,default,latin1
set tenc=utf-8

source $VIMRUNTIME/delmenu.vim
language messages zh_CN.utf-8

" use chinese help
set helplang=cn
" Enable syntax highlight
syntax on
" Show line number
set nu
" show matching bracets
set showmatch
" Basic editing options
set expandtab
set shiftwidth=4
set tabstop=4
set smarttab
set linebreak
set textwidth=0
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
" Turn backup off
set nobackup
set nowb
set noswapfile
" smart backspace
set backspace=start,indent,eol
" for Operator-pending-mode
set showcmd
" selection behave
set selection inclusive

"{{{ folding
set foldmethod=syntax
set foldlevelstart=0
"set foldminlines=5
"set foldnestmax=2

let javaScript_fold=1         " JavaScript
let perl_fold=1               " Perl
let php_folding=0             " PHP use phpfolding
let r_syntax_folding=1        " R
let ruby_fold=1               " Ruby
let sh_fold_enabled=1         " sh
let vimsyn_folding='af'       " Vim script
let xml_syntax_folding=1      " XML

"set foldmethod=marker
" save folding
"au BufWinLeave * silent! mkview
"au BufWinEnter * silent! loadview
"}}}

"Ignore these files when completing names
set wildignore=.svn,CVS,.git,*.o,*.a,*.class,*.mo,*.la,*.so,*.obj,*.swp,*.jpg,*.png,*.xpm,*.gif
set wildignore+=*/tmp/*,*.zip     " MacOSX/Linux

"set gui options
if has("gui_running")
    source ~/.vim/config/os.gui.vim
    if has("gui_macvim")
        source ~/.vim/config/os.mac.vim
    end
else
    source ~/.vim/config/os.cmd.vim
endif
