" Note: If you're using an 88/256-color terminal but still don't see the colored statusline, you may have to set the following option as well: >
set t_Co=256 " Explicitly tell vim that the terminal supports 256 colors
set background=dark

let g:solarized_termcolors=256
colorscheme solarized
"colorscheme Mustang             "This theme actually works in 256, ir_black doesn't
"colorscheme neon
"colorscheme desertEx
"colorscheme molokai


" fix meta-keys which generate <Esc>a .. <Esc>z
"let c='a'
"while c <= 'z'
"  exec "set <M-".toupper(c).">=\e".c
"  exec "imap \e".c." <M-".toupper(c).">"
"  let c = nr2char(1+char2nr(c))
"endw
