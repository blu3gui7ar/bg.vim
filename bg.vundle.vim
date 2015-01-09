set nocompatible               " be iMproved
filetype off                   " required!
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

source ~/.vim/config/appearance.vim
source ~/.vim/config/coding.vim
source ~/.vim/config/integration.vim
source ~/.vim/config/nav.vim
source ~/.vim/config/languages.vim
"source ~/.vim/config/vimwiki.vim
"source ~/.vim/config/deprecated.vim

Plugin 'genutils'

" non github repos
" Plugin 'git://git.wincent.com/command-t.git'

" git repos on your local machine (ie. when working on your own plugin)
" Plugin 'file:///Users/gmarik/path/to/plugin'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
