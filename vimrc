" base settings:
"
set nocompatible

execute pathogen#infect()
"filetype on
filetype plugin on
filetype plugin indent on

colorscheme fruity

set nowrap
set hlsearch
set number
set history=50		" keep 50 lines of command line history

set textwidth=79
set colorcolumn=+1
"hi ColorColumn ctermbg=lightgray
hi ColorColumn ctermbg=lightgreen

"messy file options
set nobackup		" do not keep a backup file, use versions instead
set nowritebackup	" do not keep a backup file, use versions instead
set noswapfile

"spelling
setlocal spell spelllang=en_us
map <F3> <Esc>]s
map <F4> <Esc>z=

imap <F3> <Esc>]s
imap <F4> <Esc>z=
set nospell


" Don't try to highlight lines longer than 512 characters.
set synmaxcol=512

"have yanked content go into the x-windows clibboard buffer
set clipboard=unnamed

"set up for nice man page viewing.
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
