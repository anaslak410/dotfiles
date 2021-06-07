"-----------------------------------------
" Anas' config for the boomer text editor |
"-----------------------------------------

syntax on 
set number 
set noswapfile 
set hlsearch 
set ignorecase 
set incsearch
set nocp
set smartindent
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

" to make p more intiuitive
xnoremap p pgvy

" will yank to clipboard 
set clipboard=unnamedplus

" mouse will work within vim and not terminal emulator ( wont copy extra lines
" and line numbers) 
:se mouse+=a

"------------
" plugins go here + all plugins should be between #begin and #end 

set nocompatible
call plug#begin('~/.vim/plugged')

Plug 'ycm-core/YouCompleteMe'
Plug 'morhetz/gruvbox'
Plug 'nathanaelkane/vim-indent-guides', { 'for': 'html' }
Plug 'Raimondi/delimitMate'
Plug 'junegunn/goyo.vim' , { 'for': 'text' }
Plug 'preservim/nerdtree'
Plug 'thinca/vim-quickrun'
Plug 'uiiaoo/java-syntax.vim'

call plug#end()


autocmd VimEnter * silent !echo -ne "\e[2 q"

"------------
" key mapping go here

" for inserting a new line without going into insert mode 
nmap oo o<Esc>k
nmap OO O<Esc>j

" to quit discarding changes
inoremap <C-q> <esc>:q!<cr>               
nnoremap <C-q> :q!<cr>

"------------
" config for the best colorscheme

set background=dark
"let g:gruvbox_contrast_dark='medium'
let g:gruvbox_italicize_strings=0
let g:gruvbox_termcolors=16
colorscheme gruvbox 


"------------
" configs for plugins goes here


" NERDTree configs
let NERDTreeShowHidden=1
map <C-n> :NERDTreeToggle<CR>

" Quickrun configs
map <C-m> :QuickRun<CR>

"java syntax highlighting no blue color
highlight link javaIdentifier NONE
