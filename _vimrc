" Call plugins 
call plug#begin('~/.vim/plugged')

" Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'mattn/emmet-vim'
Plug 'arcticicestudio/nord-vim'
Plug 'tpope/vim-surround'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'machakann/vim-highlightedyank'
Plug 'brooth/far.vim'

" Get rocking with some fuzzy finding (NOTE: Install through homebrew)
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

" Get rocking with some autocomplete
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1

call plug#end()

"Appearance
set nocompatible
syntax enable
filetype plugin indent on
colorscheme nord

" Hide current file in background if new one is opened
set hidden

" Set command history to go way back
set history=1000

" Highlight matching brackets
set showmatch

" Show command suggestions in VIM command line
set wildmenu
set wildmode=longest:list,full

"Ignore case when doing searches
set ignorecase

"Hide cursorline
set nocul

set number
set relativenumber
set scrolloff=12
set laststatus=2
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P
set shiftwidth=4

" Highlight active row when editing
autocmd InsertEnter,InsertLeave * set cul!

" Use english UI language
language en_US

" Search options.
set hlsearch "Highlight search results
set incsearch "Start searching before pressing Enter

" Autoload file changes done outside NVim
set autoread

" Set backspace on fire
set backspace=indent,eol,start


" Plugin-settings

" Modify Emmet shortcut
let g:user_emmet_leader_key='<C-E>'

" Use ctrl+t for fzf
nnoremap <C-t> :FZF<CR>

" Use ctrl+n for NERDTreeToggle
nnoremap <C-n> :NERDTreeToggle<CR>

" Close NERDTree if it's the last buffer open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Set timeout for highlight of yanked content
let g:highlightedyank_highlight_duration = 1000
