" Call plugins 
call plug#begin('~/.vim/plugged')

" UI-related
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Text manipulation
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'lepture/vim-jinja'
Plug 'neoclide/coc.nvim', {'tag': '*', 'do': './install.sh'} " auto completion on steroids with LSP-support

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


" Pretty colors
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'jeffkreeftmeijer/vim-dim'
Plug 'Lokaltog/vim-monotone'
Plug 'arcticicestudio/nord-vim'

" Get rocking with some fuzzy finding (NOTE: Install through homebrew)
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

call plug#end()

"Appearance
set nocompatible
set termguicolors
colorscheme nord
syntax enable
filetype plugin indent on
set wrap
set linebreak
set guicursor=n-v-c:hor20-Cursor

" Get rocking with some autocomplete
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
" autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
" autocmd FileType html set omnifunc=csscomplete#CompleteCSS
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
augroup filetypedetect javascript syntax=javascript

" Copy to system clipboard instead of VIMs own
set clipboard=unnamedplus

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

" Run Prettier on save
autocmd BufWritePost *.js AsyncRun -post=checktime ./node_modules/.bin/eslint --fix %
