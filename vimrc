set number
set cursorline
hi CursorLine term=bold cterm=bold guibg=Grey40
set wildmenu
set wildmode=list:longest
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx
syntax on
inoremap jj <Esc>
nnoremap <space> :!
nnoremap o o<esc>
nnoremap O O<esc>
nnoremap py :w <CR>:!clear <CR>:!python3 % <CR>
nnoremap gcc :w <CR>:!clear <CR>:!gcc % && ./a.out <CR>
nnoremap mm :w <CR>:!clear <CR>:!make <CR>:!cd bin && ./library books.txt <CR>
nnoremap ls :!ls <CR>
