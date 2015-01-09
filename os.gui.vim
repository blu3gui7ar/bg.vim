set cursorline
set guifont=Consolas:h12
if has("gui_gtk")
    set guifont=Inconsolata\ 12
end

set background=light
colorscheme solarized
"colorscheme ir_black
"colorscheme desert
"colorscheme solarized
"colorscheme neon
"colorscheme desertEx
"colorscheme molokai

" Show tabs and newline characters with ,s
nmap <leader>sl :set list!<CR>
set listchars=tab:▸\ ,eol:¬
"Invisible character colors
"highlight NonText guifg=#4a4a59
"highlight SpecialKey guifg=#4a4a59

