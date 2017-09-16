" base settings:
"
set nocompatible

execute pathogen#infect()
"filetype on
filetype plugin on
filetype plugin indent on

"colorscheme inkpot
colorscheme fruity
"colorscheme desert

set nowrap
set incsearch
set hlsearch
set number
set history=50		" keep 50 lines of command line history
" set mouse=a
set mousehide		" Hide the mouse when typing text

" Make shift-insert work like in Xterm
map <S-Insert> <MiddleMouse>
map! <S-Insert> <MiddleMouse>

" I like highlighting strings inside C comments
let c_comment_strings=1

" Switch on syntax highlighting if it wasn't on yet.
if !exists("syntax_on")
syntax on
endif


set textwidth=79
set colorcolumn=+1
hi ColorColumn ctermbg=lightgray
"hi ColorColumn ctermbg=lightgreen
"hi ColorColumn ctermbg=black
"colorscheme torte
"colorscheme pablo
"colorscheme peachpuff
"colorscheme murphy 
"colorscheme delek
colorscheme fruity
"colorscheme desert
"hi ColorColumn guibg=lightgreen
hi ColorColumn guibg=lightgray

set guifont=Monospace\ 12
"set guifont=WenQuanYi\ Micro\ Hei\ Mono\ 10
"au GuiEnter * set lines=45 columns=80
"set background="light"
"set background="dark"

" Set nice colors
" background for normal text is light grey
" Text below the last line is darker grey
" Cursor is green, Cyan when ":lmap" mappings are active
" Constants are not underlined but have a slightly lighter background
"highlight Normal guibg=grey90
"highlight Cursor guibg=Green guifg=NONE
"highlight lCursor guibg=Cyan guifg=NONE
"highlight NonText guibg=grey80
"highlight Constant gui=NONE guibg=grey95
"highlight Special gui=NONE guibg=grey95


"messy file options
set nobackup		" do not keep a backup file, use versions instead
set nowritebackup	" do not keep a backup file, use versions instead
set noswapfile

"spelling
setlocal spell spelllang=en_us
map <F3> <Esc>]s  " find next misspelled
map <F4> <Esc>z=  " show list of correctly spelled possibilities

imap <F3> <Esc>]s
imap <F4> <Esc>z=
set nospell  " hilights of misspelled words got on my nevers.  Turn it on when I need it using :set spell.

" Don't try to highlight lines longer than 512 characters.
set synmaxcol=512

"have yanked content go into the x-windows clibboard buffer
set clipboard=unnamed

"set up for nice man page viewing when using "K".
let $PAGER='more'

" setup for python:
autocmd FileType python set tabstop=4 shiftwidth=4 softtabstop=4 shiftround expandtab autoindent
"autocmd FileType python set omnifunc=pythoncomplete#Complete
"autocmd FileType python let g:pep8_map='<F5>'
"Generate tags with: ctags -R -f ~/.vim/tags/python2.7.ctags /usr/lib/python2.7/
autocmd FileType python set tags+=/home/mgross/.vim/tags/python2.7.ctags

" setup for linux kernel:
autocmd FileType c,cpp set tabstop=8 shiftwidth=8 noexpandtab smarttab autoindent

" control-direction keys for moving between split or vsplit windows
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

"set list
"set listchars=tab:▸\ ,eol:¬,extends:❯,precedes:❮,trail:.
"set showbreak=↪
"set title
"set linebreak
