set cursorline
set guifont=Consolas:h12
if has("gui_gtk")
    set guifont=Inconsolata\ 12
end

"set background=dark
"colorscheme ir_black
"colorscheme desert
"colorscheme solarized
"colorscheme neon
"colorscheme desertEx
colorscheme molokai

" Show tabs and newline characters with ,s
nmap <Leader>s :set list!<CR>
set listchars=tab:▸\ ,eol:¬
"Invisible character colors
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59

if has("gui_macvim")
    source ~/.vim/config/mac.vim
end
