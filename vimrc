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
Plugin 'Valloric/YouCompleteMe'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'chriskempson/base16-vim'
Plugin 'tomtom/tcomment_vim'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'jiangmiao/auto-pairs'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'edkolev/tmuxline.vim'
Plugin 'janko-m/vim-test'
Plugin 'tpope/vim-dispatch'

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
let mapleader = ","     " change leader key to ,

" CtrlP Configuration
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" Make CtrlP use ag for listing the files.
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
let g:ctrlp_use_caching = 0

" Airline Configuration
let g:airline_theme='base16'
let g:airline_powerline_fonts=1
set laststatus=2

" NerdTree Configuration
map <C-\> :NERDTreeToggle<CR>

" YouCompleteMe Configuration
let g:ycm_complete_in_comments=1
let g:ycm_complete_in_strings=1
let g:ycm_add_preview_to_completeopt=0
set completeopt-=preview                  " no preview window

" Vim Test Configuration
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>l :TestLast<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>t :TestNearest<CR>
