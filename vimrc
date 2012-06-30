set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-haml'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-unimpaired'

Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'kien/ctrlp.vim'
Bundle 'ervandew/supertab'
Bundle 'tomtom/tcomment_vim'
Bundle 'majutsushi/tagbar'
Bundle 'vim-scripts/EasyGrep'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'Raimondi/delimitMate'
Bundle 'tsaleh/vim-matchit'

Bundle 'kchmck/vim-coffee-script'
Bundle 'groenewege/vim-less'

Bundle 'vim-scripts/matrix.vim--Yang'
Bundle 'koron/nyancat-vim'

" Railscasts theme
Bundle 'vim-scripts/Railscasts-Theme-GUIand256color'

syntax on
filetype plugin indent on

au BufRead,BufNewFile *.rabl setf ruby

set nobackup
set nowritebackup
set noswapfile

set encoding=utf-8
set number
set hidden
set tabstop=2
set softtabstop=2
set shiftwidth=2
set smarttab
set autoindent
set expandtab
set history=500
set backspace=indent,eol,start

set ignorecase
set smartcase
set incsearch
set hlsearch

set background=dark
colorscheme railscasts

" good for my fingers
inoremap jj <ESC>

" Remap leader key
let mapleader = ","
let g:mapleader = ","

" Save one keystroke
nnoremap ; :

" Be a man, do the right thing!
nnoremap <up> :echo "Be a man. Do the right thing. Use HJKL!"<cr>
nnoremap <down> :echo "Be a man. Do the right thing. Use HJKL!"<cr>
nnoremap <left> :echo "Be a man. Do the right thing. Use HJKL!"<cr>
nnoremap <right> :echo "Be a man. Do the right thing. Use HJKL!"<cr>
inoremap <up> <Esc>:echo "Be a man. Do the right thing. Use HJKL!"<cr>
inoremap <down> <Esc>:echo "Be a man. Do the right thing. Use HJKL!"<cr>
inoremap <left> <Esc>:echo "Be a man. Do the right thing. Use HJKL!"<cr>
inoremap <right> <Esc>:echo "Be a man. Do the right thing. Use HJKL!"<cr>
nnoremap j gj
nnoremap k gk

" Easier to navigate around windows
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Clear search
nnoremap <leader><space> :noh<cr>

" map save to ctrl-s, write the following in .bashrc
" stty stop ''
nnoremap <C-n> :new<CR> 
nnoremap <C-s> :w<CR>
inoremap <C-s> <Esc>:w<CR>i

" remap some CtrlP keys
let g:ctrlp_map = '<leader>p'
nnoremap <leader>b :CtrlPBuffer<CR>

" type <leader><leader> to trigger easy motion
let g:EasyMotion_leader_key = '<leader><leader>'

" Edit and source vimrc
nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" Bubble single lines, remap unimpaired key
nmap <C-Up> [e
nmap <C-Down> ]e
" Bubble multiple lines, remap unimpaired key
vmap <C-Up> [egv
vmap <C-Down> ]egv

" Remap tagbar toggle
nnoremap <leader>t :TagbarToggle<CR>

" Maps autocomplete to tab
imap <Tab> <C-N>

imap <C-L> <Space>=><Space>

" Edit routes and schema in Rails app
command! Rroutes :e config/routes.rb
command! Rschema :e db/schema.rb
