set nocompatible

call pathogen#infect()
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
set history=100
set backspace=indent,eol,start
set ignorecase
set smartcase
set incsearch
set hlsearch

set background=dark
colorscheme slate

" html2haml, install by running 'rvm wrapper ruby-1.9.2-p290 vim html2haml'
" :vmap <leader>h :!~/.rvm/bin/vim_html2haml<cr>