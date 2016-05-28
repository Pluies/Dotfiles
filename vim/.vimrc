" Vundle
set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-sleuth'
Plugin 'bling/vim-airline'
Plugin 'flazz/vim-colorschemes'
Plugin 'powerline/fonts'  " NB: still need to run the ./install.sh script for the fonts to actually get installed
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'qualiabyte/vim-colorstepper'
Plugin 'scrooloose/syntastic.git'
Plugin 'tpope/vim-fireplace'
Plugin 'nvie/vim-flake8'
Bundle 'chase/vim-ansible-yaml'

let g:flake8_cmd="/usr/local/bin/pep8"

call vundle#end()            " required
filetype plugin indent on    " required

" Airline
set laststatus=2
let g:airline_powerline_fonts=1

" Mappings
cmap w!! %!sudo tee > /dev/null %

" Various options
set ww=<,>,[,]               " Allow the right/left arrows to go to next and previous line
set number cursorline        " line numbering w/ cursor line highlighted
set showcmd                  " show incomplete cmds down the bottom
set lazyredraw               " do not redraw while running macros
set hlsearch incsearch       " highlighted, incremental search
set ignorecase smartcase     " smart casing
set dir=/tmp                 " where to put the swap files
set ttimeoutlen=50

if has('gui_running')
  " GUI config
  set background=dark
  colorscheme moria
  set guifont=Meslo\ LG\ S\ Regular\ for\ Powerline:h14
  " Automatically launch NERDtree
  au VimEnter *  NERDTree
else
  " CLI config
  set t_Co=256
  syntax on
endif

" Display hidden files in NERDTree by default
let NERDTreeShowHidden=1

nmap j gj
nmap k gk

