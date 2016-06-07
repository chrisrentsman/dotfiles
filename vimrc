" ========================================================================
" Vundle stuff
" ========================================================================
set nocompatible " Required by vundle
filetype off	 " Required by vundle

" Set the runtime path to include vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" My plugins
Plugin 'ervandew/supertab'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'chriskempson/base16-vim'
Plugin 'tomtom/tcomment_vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'jiangmiao/auto-pairs'

" End Vundle configuration
call vundle#end()	  " required
filetype plugin indent on " required

" ========================================================================
" General Vim Configuration
" ========================================================================
set backspace=indent,eol,start " make backspace work
syntax on		       " syntax highlighting
set relativenumber	       " relative line numbers
set expandtab		       " 2 space indentation
set shiftwidth=2
set softtabstop=2
set updatetime=250             " check for changes every 250ms

" Color Configuration
set background=dark
let base16colorspace=256
colorscheme base16-tomorrow 

" ========================================================================
" Keybindings and Leader Commands
" ========================================================================

" CtrlP Configuration
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" Airline Configuration
let g:airline_powerline_fonts=1
let g:airline_theme='base16'
set laststatus=2
