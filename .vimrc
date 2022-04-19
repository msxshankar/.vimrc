" Level 1: Beginner
set number
set cursorline
hi CursorLine term=bold cterm=bold guibg=Grey40
syntax on

" Key remaps
inoremap jj <Esc>
inoremap JJ <Esc>
nnoremap `` :q! <CR>
nnoremap <space> :!
nnoremap o o<esc>
nnoremap O O<esc>
nnoremap ss :w <CR>
nnoremap bn :bn <CR>
nnoremap bf :bf <CR>
nnoremap ff :NERDTree <CR>

" Level 2: Intermediate
set wildmenu
set wildmode=list:longest
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx
set incsearch

" Run code from Vim/Neovim
nnoremap py :w <CR>:!clear <CR>:!python3 % <CR>
nnoremap gcc :w <CR>:!clear <CR>:!gcc % && ./a.out <CR>

" Level 3: Advanced

" PLUGINS------------------------------------------------------------------{{{
call plug#begin('~/.vim/plugged')

	Plug 'srcery-colors/srcery-vim'
	Plug 'morhetz/gruvbox'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'preservim/nerdtree'

call plug#end()

" END OF PLUGINS }}}

" Set colour theme
set background=dark
colorscheme gruvbox


" Level 4: Professional

" Use tab for autocompletion
inoremap <silent><expr> <TAB>
	\ pumvisible() ? "\<C-n>" :     
 	\ <SID>check_back_space() ? "\<TAB>" :
 	\ coc#refresh()                            
 inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
  
 function! s:check_back_space() abort  
 	let col = col('.') - 1
 	return !col || getline('.')[col - 1]  =~# '\s'      
endfunction
  
" Use spacebar to trigger completion
if has('nvim')
	inoremap <silent><expr> <c-space> coc#refresh()
else
 	inoremap <silent><expr> <c-@> coc#refresh()
endif

" Level 5: CHAD
