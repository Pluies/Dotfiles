" General option - run all the scripts
call pathogen#runtime_append_all_bundles()

" Mappings
cmap w!! %!sudo tee > /dev/null %
" Ctrl-b: indent
map <C-b> gg=G<CR>
" Ctrl-r: launch ruby
map <C-r> :!ruby %<CR>
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
colorscheme moria
colorscheme anotherdark		" color scheme <3
colorscheme moria			" why do we have to set it three times? No idea. but it doesn't really work otherwise.
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

" Hooks
" Launches Sinatra projects after saving
" au BufWritePost *.rb if getline(2) =~ "sinatra" | !ruby <afile>
