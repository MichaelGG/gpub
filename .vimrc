execute pathogen#infect()
set ttyscroll=0
syntax on
colorscheme hybrid
filetype indent on
set tabstop=4
set shiftwidth=4
set expandtab
autocmd BufNewfile,BufReadPost *.md set filetype=markdown
imap jk <Esc>
let CursorColumnI = 0 "the cursor column position in INSERT
autocmd InsertEnter * let CursorColumnI = col('.')
autocmd CursorMovedI * let CursorColumnI = col('.')
autocmd InsertLeave * if col('.') != CursorColumnI | call cursor(0, col('.')+1) | endif

