" General option - run all the scripts
"call pathogen#runtime_append_all_bundles()


" Vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'altercation/vim-colors-solarized'
Bundle 'bling/vim-airline'
Bundle 'pangloss/vim-javascript'
Bundle 'flazz/vim-colorschemes'
Bundle 'vim-ruby/vim-ruby'
Bundle 'kchmck/vim-coffee-script'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'mattn/emmet-vim'
Bundle 'rodjek/vim-puppet'
Bundle 'godlygeek/tabular'
Bundle 'guns/vim-clojure-static'
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-sleuth'
Bundle 'tpope/vim-fireplace'

" vim-airline
set laststatus=2
set t_Co=256
set ttimeoutlen=50
let g:airline_powerline_fonts=1

" CtrlP
set wildignore+=*/tmp/*,*/target/*,*.so,*.swp,*.jar,

" Mappings
cmap w!! %!sudo tee > /dev/null %

" Various options
filetype plugin indent on  " perfect autoindent
set number cursorline      " line numbering w/ current line highlighted
set lazyredraw             " do not redraw while running macros
set hls smartcase          " highlight search
set dir=/tmp               " where to put the swap files
set showcmd                " show command currently being typed in
set t_Co=256               " 256 colours, now we're talking
set ww=<,>,[,]             " Allow the right/left arrows to go to next and previous line

colorscheme freya

" ftl support
au BufRead,BufNewFile *.ftl set filetype=ftl
au! Syntax ftl source ~/.vim/ftl.vim

" Show trailing spaces
set listchars=tab:»\ ,eol:↯,trail:•
set nolist
highlight SpecialKey ctermbg=1 ctermfg=15

au BufRead,BufNewFile *.cap set filetype=ruby

