" Globals
set history=500
filetype plugin on
filetype indent on
set autoread
au FocusGained,BufEnter * silent! checktime
let mapleader = ","
command! W execute 'w !sudo tee % > /dev/null' <bar> edit!
set nobackup
set nowb
set noswapfile
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set lbr
set tw=500
set ai
set si
set wrap
vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
vnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>
set laststatus=2

" Interface
set so=7
set number
let $LANG='en'
set langmenu=en
set wildmenu
set ruler 
set cmdheight=1
set hid
set backspace=eol,start,indent
set whichwrap=<,>,h,l
set ignorecase
set smartcase
set hlsearch
set incsearch
set lazyredraw
set showmatch
set mat=2
set noerrorbells
set novisualbell
set t_vb=
set tm=500
set foldcolumn=0

" Colours
syntax enable
set encoding=utf8

" Plugs
call plug#begin()

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'

call plug#end()

" Maps
map <C-p> :Files <cr>
map <C-l> :Buffers <cr>

set laststatus=2

let g:airline#extensions#tabline#enabled = 1
