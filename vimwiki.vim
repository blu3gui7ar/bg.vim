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
