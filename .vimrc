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
" Editing behavior
"
""""

" Wrap searches (allow to jump to the beginning of the file)
set wrapscan

" Case unsensible search
set ignorecase

""""""""""
"
" Indentation specific configuraton
"
""""

" Autoindent
set autoindent

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

" Syntax highlighting
filetype plugin on
syntax on

" Line numbering
set number

" Highlight current line
set cursorline

" Mark column number 80
set cc=80 
