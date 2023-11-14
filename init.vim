set autoindent " Indent a new line
set mouse=a " Allow to use the mouse in the editor
set number " Shows the line numbers
set tabstop=4 " Number of columns occupied by a tab
set shiftwidth=4 " Width for autoindent
set smarttab " 
set clipboard=unnamedplus
set softtabstop=4
syntax on 	

" ---Just some notes---
" After installing vim-plug, is necessary to add these couple of lines on init.vim, so we can use :PlugInstall command.
" The Plug command is to install the plugins we want to install in our configuration.
" 
" :PlugClean :PlugInstall :UpdateRemotePlugins


call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

Plug 'vim-airline/vim-airline' " Lean & mean status/tabline for vim that's light as air
Plug 'vim-airline/vim-airline-themes' " Themes for the lines we call status 
Plug 'ryanoasis/vim-devicons' " Adds filetypes glyphs (icons) to various vim plugins 
Plug 'scrooloose/nerdtree' " The NERDTree is a file system explorer for the vim editor 
Plug 'scrooloose/nerdcommenter' " Comment functions 
Plug 'sheerun/vim-polyglot' " A collection of language packs for vim
Plug 'jiangmiao/auto-pairs' " Insert or delete brackets, parens, quotes in pair
Plug 'neoclide/coc.nvim', {'branch': 'release'} " Custom popup menu with snippet support
Plug 'tpope/vim-fugitive' " The premier vim plugin for git

set encoding=UTF-8

call plug#end()

" air-line
let g:airline_solorized_bg='dark'
let g:airline#extension#tabline#formatter='default'

" Nerdtree
let NERDTreeQuitOnOpen=1

" ColorScheme
colorscheme slate 

inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"
