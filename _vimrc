" If gruvbox-Werror theme is missing in /colors, get that shit
if empty(glob('~/.vim/colors/gruvbox.vim'))
    silent !curl -fLo ~/.vim/colors/gruvbox.vim
	\  https://raw.githubusercontent.com/morhetz/gruvbox/master/colors/gruvbox.vim
endif


" Vim Plug
call plug#begin()
Plug 'mattn/emmet-vim'
call plug#end()

" Show syntax
syntax enable
" Set color scheme
set background=dark
" colorscheme gruvbox 

"UI-stuff --------------------------------------------------
" Show cursorline
set cul
" Wrap text 
set wm=2
" Show linenumbers...
set number
" Use relative line numbers"
set relativenumber
" Show status bar (airline)
set laststatus=2


" Interactions ---------------------------------------------
" Scroll sideways a char at a time, rather than a screen at a time
set sidescroll=1
" Scroll slighlty before cursor reaches end of screen
set scrolloff=3
filetype plugin indent on
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

" Key remaps for typos and cool stuff.
noremap :W :w
noremap :Q :q
" Let emmet shortcut be tab instead of the weird default shit.
imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")
