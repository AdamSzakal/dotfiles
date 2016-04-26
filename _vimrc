" If gruvbox-theme is missing in /colors, get that shit
"if empty(glob('~/.vim/colors/gruvbox.vim'))
"	silent !curl -fLo ~/.vim/colors/gruvbox.vim
"	\  https://raw.githubusercontent.com/morhetz/gruvbox/master/colors/gruvbox.vim
"endif




" vim-plug -------------------------------------------------
call plug#begin('~/.vim/plugged')

Plug 'junegunn/goyo.vim'

" Add plugins to &runtimepath
call plug#end()

"Colors n shit ---------------------------------------------
" Show syntax
syntax enable
" Set color scheme
set background=dark
colorscheme gruvbox
"Set line spacing
set linespace=4

"UI-stuff --------------------------------------------------
" Show cursorline
set cul
" Wrap text 
set wm=2
" Show linenumbers...
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
" On pressing tab, insert 4 spaces
set expandtab

" Key remaps for typos and cool stuff.
let mapleader = "\<space>"
noremap :W :w
noremap :Q :q
noremap <leader>n :tabnew
noremap <leader>h :tabprev
noremap <leader>l :tabnext
