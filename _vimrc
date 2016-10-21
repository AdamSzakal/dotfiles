" From Configuring Vim Right,
" https://items.sjbach.com/319/configuring-vim-right

set nocompatible
syntax enable
filetype plugin indent on

set t_co=256
colorscheme murphy

set hidden
set history=1000
set matchtime=0
set showmatch
set wildmenu
set wildmode=list:longest
set ignorecase
set smartcase
set ruler
set nocul
set visualbell
set shortmess=atI
set number
set relativenumber
set scrolloff=8
set shiftwidth=4
set laststatus=1

" Search options.
set hlsearch
set incsearch

" Set backspace on fire
set backspace=indent,eol,start

" Modify Emmet shortcut
let g:user_emmet_leader_key='<C-E>'
