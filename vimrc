" base settings:
"
set nocompatible

execute pathogen#infect()
"curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

" some good plugin's:
" https://github.com/scrooloose/nerdtree.git 
" https://github.com/Xuyuanp/nerdtree-git-plugin.git
" https://github.com/nvie/vim-flake8.git

"filetype on
filetype plugin on
filetype plugin indent on

"set term=screen-256color
colorscheme inkpot   "http://github.com/ciaranm/inkpot/
"colorscheme fruity  "https://github.com/mitsuhiko/fruity-vim-colorscheme.git
"colorscheme desert

set nowrap
set incsearch
set hlsearch
set number
set history=50		" keep 50 lines of command line history
" set mouse=a

set textwidth=79
set colorcolumn=+1
hi ColorColumn ctermbg=lightgray
"hi ColorColumn ctermbg=lightgreen
"hi ColorColumn ctermbg=black
"set background="light"
set background="dark"

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
