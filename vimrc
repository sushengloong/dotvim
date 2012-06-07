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

Bundle 'scrooloose/nerdtree'
Bundle 'kien/ctrlp.vim'
Bundle 'ervandew/supertab'
Bundle 'tomtom/tcomment_vim'

Bundle 'kchmck/vim-coffee-script'
Bundle 'groenewege/vim-less'

Bundle 'vim-scripts/matrix.vim--Yang'
Bundle 'koron/nyancat-vim'

syntax on
filetype plugin indent on

au BufRead,BufNewFile *.rabl setf ruby

set nobackup
set nowritebackup
set noswapfile

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
colorscheme slate

" map save to ctrl-s, write the following in .bashrc
" stty stop ''
map <C-s> :w<CR>
imap <C-s> <Esc>:w<CR>i

map <C-b> :CtrlPBuffer<CR>
map <C-n> :new<CR> 

" html2haml, install 'rvm wrapper ruby-1.9.2-p290 vim html2haml'
" :vmap <leader>h :!~/.rvm/bin/vim_html2haml<cr>
