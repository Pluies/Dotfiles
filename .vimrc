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

" vim-airline
set laststatus=2
set t_Co=256
set ttimeoutlen=50
let g:airline_powerline_fonts=1


" Mappings
cmap w!! %!sudo tee > /dev/null %
" Ctrl-b: indent
map <C-b> gg=G<CR>
" Caps Lock is set as Option (in OSX System Preferences), so now we can assign Caps Lock+Q to Esc
:imap  <esc>
"map <silent> <C-e> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>


" Various options
filetype plugin indent on	" perfect autoindent
set number				" line numbering
set cursorline				" cursor line is highlighted
set lazyredraw				" do not redraw while running macros
set hls					" highlight search
set ru					" ruler (position inside the document)
set ts=5					" tab stop size; 1 tab = 5 spaces
set sw=5					" shift width, same thing
set dir=/tmp				" where to put the swap files
"colorscheme moria
"colorscheme anotherdark		" color scheme <3
"olorscheme moria			" why do we have to set it three times? No idea. but it doesn't really work otherwise.
set guifont=Menlo:h15		" Best font.
set ww=<,>,[,]				" Allow the right/left arrows to go to next and previous line

" Fix Scheme indenting (no tabs)
autocmd FileType scheme set expandtab

" Code folding
set foldmethod=indent		"fold based on indent
set foldnestmax=10			"deepest fold is 10 levels
set nofoldenable			"dont fold by default
set foldlevel=1

" Dictionary support
set dictionary+=/usr/share/dict/words

" ftl support
au BufRead,BufNewFile *.ftl set filetype=ftl
au! Syntax ftl source ~/.vim/ftl.vim

" Show trailing spaces
set listchars=tab:»\ ,eol:↯,trail:•
set nolist
highlight SpecialKey ctermbg=1 ctermfg=15

" Show Tabs
function ShowTabsFun()
  syntax match Tab /\t/ containedin=ALL
  highlight Tab gui=underline ctermbg=236
endfunction
command ShowTabs call ShowTabsFun()

" Show Spaces
function ShowSpacesFun()
  syntax match Spaces /  \+/ containedin=ALL
  highlight Spaces gui=underline ctermbg=220
endfunction
command ShowSpaces call ShowSpacesFun()

" Hooks
" Launches Sinatra projects after saving
" au BufWritePost *.rb if getline(2) =~ "sinatra" | !ruby <afile>
" rsync to who
":au BufWritePost who.rb !/Users/florent/Dropbox/Projects/who/update_vps.sh

