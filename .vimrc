"------------
" Anas' config for the boomer text editor 


syntax on 
set number 
set noswapfile 
set hlsearch 
set ignorecase 
set incsearch
set nocp
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"
" to make p more intiuitive
xnoremap p pgvy

"------------
" all plugins should be between #begin and #end 

set nocompatible
call plug#begin('~/.vim/plugged')
Plug 'ycm-core/YouCompleteMe'
Plug 'morhetz/gruvbox'
Plug 'nathanaelkane/vim-indent-guides', { 'for': 'html' }
Plug 'Raimondi/delimitMate'
Plug 'junegunn/goyo.vim' , { 'for': 'text' }
Plug 'preservim/nerdtree'
" Add plugins here
call plug#end()


autocmd VimEnter * silent !echo -ne "\e[2 q"

"------------
" for inserting a new line without going into insert mode 

nmap oo o<Esc>k
nmap OO O<Esc>j

"------------
" config for the best colorscheme

set background=dark
"let g:gruvbox_contrast_dark='medium'
let g:gruvbox_italicize_strings=0
let g:gruvbox_termcolors=16
colorscheme gruvbox 
