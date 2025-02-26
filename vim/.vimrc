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
Plugin 'scrooloose/syntastic.git'
Plugin 'hashivim/vim-terraform'
Plugin 'juliosueiras/vim-terraform-completion'
Plugin 'google/vim-jsonnet'

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
set sh=bash                  " Ensure we use bash for script-out

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

" Syntactic: force python 3 mode
let g:syntastic_python_checkers = ['python']
let g:syntastic_python_python_exec = 'python3'

" Auto-format Terraform on save
let g:terraform_fmt_on_save=1
autocmd FileType terraform setlocal cc=72

" jsonnet: do not format on save (too brutal)
let g:jsonnet_fmt_on_save=0

nmap j gj
nmap k gk
