" Level 1: Beginner
set number
set cursorline
hi CursorLine term=bold cterm=bold guibg=Grey40
syntax on

" 80 line limit
" Remember that the gruvbox theme will override the colours!
highlight ColorColumn ctermbg=black
call matchadd('ColorColumn', '\%81v', 100)

" Key remaps
inoremap jj <Esc>
inoremap JJ <Esc>
nnoremap `` :q! <CR>
nnoremap <space> :!
nnoremap o o<esc>
nnoremap O O<esc>
nnoremap ss :w <CR>
nnoremap SS :w <CR>
nnoremap bn :bn <CR>
nnoremap bf :bf <CR>
nnoremap ff :NERDTreeToggle <CR>

" Indentation
set autoindent
set tabstop=4
set shiftwidth=4

" Level 2: Intermediate
set wildmenu
set wildmode=list:longest
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx
set incsearch

" Run code from Vim/Neovim
nnoremap py :w <CR>:!clear <CR>:!python3 % <CR>
nnoremap gcc :w <CR>:!clear <CR>:!gcc % && ./a.out <CR>

" Level 3: Advanced
" PLUGINS

" Automatic Installation of vim plug
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

	Plug 'morhetz/gruvbox'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'preservim/nerdtree'
	Plug 'tpope/vim-fugitive'
	Plug 'matze/vim-move'
	Plug 'psliwka/vim-smoothie'

call plug#end()

" END OF PLUGINS }}}

" vim-move customisation
" Use capslock to move!
let g:move_key_modifier = 'S'
let g:move_key_modifier_visualmode = 'S'

" Set colour theme
set background=dark
colorscheme gruvbox

" Extra remaps
"inoremap <silent><expr> <TAB>
"	\ pumvisible() ? "\<C-n>" :     
" 	\ <SID>check_back_space() ? "\<TAB>" :
" 	\ coc#refresh()                            
" inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
  
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
