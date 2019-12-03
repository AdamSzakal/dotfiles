" Call plugins 
call plug#begin('~/.vim/plugged')

" UI-related
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Text manipulation
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'lepture/vim-jinja'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"Git-related
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

" Layout and syntax
Plug 'nathanaelkane/vim-indent-guides'
Plug 'machakann/vim-highlightedyank'
Plug 'etdev/vim-hexcolor'
Plug 'jparise/vim-graphql'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'w0rp/ale' "async linting engine
Plug 'skywind3000/asyncrun.vim' "Enable async autocommands
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

" Pretty colors
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'jeffkreeftmeijer/vim-dim'
Plug 'Lokaltog/vim-monotone'
Plug 'arcticicestudio/nord-vim'
Plug 'junegunn/seoul256.vim'
Plug 'morhetz/gruvbox'

" Get rocking with some fuzzy finding (NOTE: Install through homebrew)
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

call plug#end()

"Appearance
set nocompatible
set termguicolors
colorscheme gruvbox
set background=dark
syntax enable
filetype plugin indent on
set linebreak
set guicursor=n-v-c:hor20-Cursor

" Copy to system clipboard instead of VIMs own
" set clipboard=unnamedplus

" Hide current file in background if new one is opened
set hidden

" Set command history to go way back
set history=1000

" Maintain undo-history between sessions...
set undofile
"... and move the undo-dir to vim-root
set undodir=~/.vim/undodir

" Highlight matching brackets
set showmatch

" Show command suggestions in VIM command line
set wildmenu
set wildmode=longest:list,full

"Ignore case when doing searches
set ignorecase

"Line handling
set number
set relativenumber
set scrolloff=4
set laststatus=2
set statusline=%<%F\ %h%m%r%=%-14.(%l,%c%V%)\ %P
set tabstop=2
set shiftwidth=2
set noexpandtab

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

" FZF-stuff ------
" Use ctrl+t for fzf file browser
nnoremap <C-t> :FZF<CR>
" Use ctrl+b for fzf buffer browser
nnoremap <C-b> :Buffers<CR>
" Use ctrl+c for fzf commit browser
nnoremap <C-c> :Commits<CR>
" Use ctrl+g for fzf git status (:GFiles?)
nnoremap <C-g> :GFiles?<CR>

" Use ctrl+n for NERDTreeToggle
nnoremap <C-n> :NERDTreeToggle<CR>

" Close NERDTree if it's the last buffer open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Set timeout for highlight of yanked content
let g:highlightedyank_highlight_duration = 750

" Get Ale to behave a bit better
let g:ale_sign_error = '●' " Less aggressive than the default '>>'
let g:ale_sign_warning = '.'
let g:ale_lint_on_enter = 0 " Less distracting when opening a new file

" Run PrettierAsync on save
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync
