" If gruvbox-theme is missing in /colors, get that shit
if empty(glob('~/.vim/colors/gruvbox.vim'))
	silent !curl -fLo ~/.vim/colors/gruvbox.vim
	\  https://raw.githubusercontent.com/morhetz/gruvbox/master/colors/gruvbox.vim
endif

" Use Vim instead of Vi. Duh.
set nocompatible

"Colors n shit ---------------------------------------------
" Show syntax
syntax enable
" Set color scheme
set background=dark
colorscheme gruvbox 
"Set line spacing
set linespace=4
" 256 colorz yo.
set t_co=256

"UI-stuff --------------------------------------------------
" Show cursorline
set cul
" Wrap text 
set wm=2
" Show linenumbers
set number
" Use relative line numbers"
set relativenumber
" Show status bar
set laststatus=1
" Show commands
set showcmd
" Show position in document
set ruler

" Interactions ---------------------------------------------
" Scroll sideways a char at a time, rather than a screen at a time
set sidescroll=1
" Scroll slighlty before cursor reaches end of screen
set scrolloff=3
filetype plugin indent on
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
