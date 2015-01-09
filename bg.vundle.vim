set nocompatible               " be iMproved
filetype off                   " required!
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Categories according to http://vimawesome.com
" Find help on http://vimcasts.org/
source ~/.vim/config/other.vim
source ~/.vim/config/language.vim
source ~/.vim/config/completion.vim
source ~/.vim/config/code_display.vim
source ~/.vim/config/integration.vim
source ~/.vim/config/interface.vim
source ~/.vim/config/commands.vim
source ~/.vim/config/blu3gui7ar.vim
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
