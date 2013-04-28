""""""""""
"  ______ _     _              __          
" |  ____| |   | |            / _|         
" | |__  | |__ | |_ __   ___ | |_ _____  __
" |  __| | '_ \| | '_ \ / _ \|  _/ _ \ \/ /
" | |____| | | | | | | | (_) | ||  __/>  < 
" |______|_| |_|_|_| |_|\___/|_| \___/_/\_\
"
" Vim configuration file
"
""""

""""""""""
"
" Bundles
"
""""

" Be iMproved
set nocompatible

" Required
filetype off

set rtp+=~/.vim/bundle/vundle
call vundle#rc()

" Let Vundle manage Vundle (required)
Bundle 'gmarik/vundle'

" Bundles
" syntax and error highlight
Bundle 'scrooloose/syntastic' 
" colorscheme
Bundle 'altercation/vim-colors-solarized' 
" Git 
Bundle 'tpope/vim-fugitive' 
" File explorer
Bundle 'scrooloose/nerdtree'
" Lines numbering
Bundle 'myusuf3/numbers.vim'
" Powerline
Bundle 'Lokaltog/vim-powerline'

" Required
filetype plugin indent on

""""""""""
"
" Editing behavior
"
""""

" Wrap searches (allow to jump to the beginning of the file)
set wrapscan

" Case unsensible search
set ignorecase

" Force encoding
set encoding=utf-8

" Auto reload file changed from the outside
set autoread

""""""""""
"
" Indentation specific configuraton
"
""""

" Autoindent
set autoindent
set smartindent

" Tab lenght
set tabstop=8

" Number of space per tab
set softtabstop=4

" Using space instead of tabs
set expandtab

" Makefile specific tabs
autocmd FileType make setlocal noexpandtab

""""""""""
"
" Aspect
"
""""

" Colorscheme
syntax enable
set background=dark
colorscheme solarized

" Syntax highlighting
filetype plugin on
"syntax on

" Line numbering
set number

" Highlight current line
set cursorline

" Mark column number 80
set cc=80 
