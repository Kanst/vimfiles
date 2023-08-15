
" Vim TextEditor Configuration
" Gadzhi Gadzhiev <gadzhi@gadzhiev.com>
" https://github.com/resure/vimfiles


set nocompatible                  " Nobody cares about vi-compatibility

filetype off                      " Required for VUndle

set rtp+=~/.vim/bundle/vundle
call vundle#rc()

" Bundle 'gmarik/vundle'
Bundle 'mileszs/ack.vim'
Bundle 'scrooloose/nerdtree'
" Bundle 'slack/vim-bufexplorer'
Bundle 'tpope/vim-bundler'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-markdown'
Bundle 'tpope/vim-git'
" Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-haml'
Bundle 'tpope/vim-eunuch'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-commentary'
Bundle 'groenewege/vim-less'
" Bundle 'Lokaltog/vim-easymotion'
Bundle 'kchmck/vim-coffee-script'
Bundle 'altercation/vim-colors-solarized'
" Bundle 'rson/vim-conque'
Bundle 'sickill/vim-pasta'
Bundle 'Lokaltog/vim-powerline'
" Bundle 'bbommarito/vim-slim'
Bundle 'wlangstroth/vim-haskell'
Bundle 'pangloss/vim-erlang'
Bundle 'vim-scripts/L9'
Bundle 'csexton/jekyll.vim'
Bundle 'mattn/gist-vim'
" Bundle 'msanders/snipmate.vim'
Bundle 'tpope/vim-vividchalk'
Bundle 'jgdavey/vim-railscasts'
Bundle 'tomasr/molokai'
Bundle 'digitaltoad/vim-jade'
Bundle 'flazz/vim-colorschemes'
Bundle 'ctags.vim'
" Bundle 'Python-mode-klen'
Bundle 'python-mode'
Bundle 'chef.vim'
Bundle 'sjl/badwolf'
Bundle 'tbastos/vim-lua'
Bundle 'morhetz/gruvbox'
Bundle 'suan/vim-instant-markdown'
Bundle 'dense-analysis/ale'
" Bundle 'fatih/vim-go'
Bundle 'hashivim/vim-terraform'
let g:go_version_warning = 0
filetype plugin indent on         " Required for Vundle
syntax enable

set nowrap                        " Don't wrap lines
set scrolloff=7                   " Show 3 lines of context around the cursor.
set tabstop=4 shiftwidth=4        " A tab is two spaces
set expandtab                     " Use spaces, not tabs
set backspace=indent,eol,start    " Backspace through everything in insert mode

set modelines=0                   " Preventing some security exploits.

" set nobackup                      " Don't make a backup before overwriting a file.

set backupdir=~/.vim/_backup      " Where to put backup files.
set directory=~/.vim/_temp        " Where to put swap files.

set showcmd                       " Display incomplete commands and mode you're in
set showmode

set linespace=4                   " Add some line space for easy reading.

set visualbell                    " Disable visual bell.

set encoding=utf-8                " Set main encoding.

set autoindent

set hidden                        " Handle multiple buffers better.

set wildmenu                      " Enhanced command line completion.
set wildmode=list:longest

set title                         " Set the terminal's title.
set ttyfast                       " Indicates a fast terminal connection.

set ruler                         " Show the current line and column number.
set number                        " Show line numbers.

set laststatus=2                  " Show the status line all the time.

set ignorecase                    " Case-sensitive search.
set smartcase

set gdefault                      " Applying substitutions globally on lines.

set incsearch                     " Highlighting search results.
set showmatch
set hlsearch

"set wrap                         " Making Vim handle long lines correctly.
"set textwidth=79
"set linebreak
"set formatoptions=qrn1
"set colorcolumn=85

set list                          " Better invisible characters.
set listchars=tab:▸\ ,eol:¬

set mouse=a                       " Some stuff to get the mouse going in term.
set ttymouse=xterm2

let mapleader = ","               " Setup leader key.

" Easier commands
nnoremap ; :
vnoremap ; :

" Turning off vim's regex chars
nnoremap / /\v
vnoremap / /\v

nnoremap <leader>a :Ack

" Re-hardwrap paragraphs of text
nnoremap <leader>q gqip

" Reselect pasted text
nnoremap <leader>v V`]

" Quicker Escaping
inoremap jj <ESC>

" Working with split windows
nnoremap <leader>g <C-w>v<C-w>l 
nnoremap <leader>s <C-w>s<C-w>l

" Navigating around the splits
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Gundo
nnoremap <F5> :GundoToggle<CR>

" NERDTree keys.
silent! nmap <silent> <Leader>p :NERDTreeToggle<CR>
nnoremap <silent> <C-f> :call FindInNERDTree()<CR>

" Map to bufexplorer
nnoremap <leader>e :BufExplorer<cr>

" Key mapping for textmate-like indentation
nmap <D-[> <<
nmap <D-]> >>
vmap <D-[> <gv
vmap <D-]> >gv

" Tab mappings
map <leader>tt :tabnew<cr>
map <leader>te :tabedit
map <leader>tc :tabclose<cr>
map <leader>to :tabonly<cr>
map <leader>tn :tabnext<cr>
map <leader>tp :tabprevious<cr>
map <leader>tf :tabfirst<cr>
map <leader>tl :tablast<cr>
map <leader>tm :tabmove

au FileType coffee map <leader>rr :!coffee %<CR>
au FileType javascript map <leader>rr :!node %<CR>
au FileType ruby map <leader>rr :!ruby %<CR>
map <leader>cs :ConqueTerm zsh<CR>

map <leader>ss :e ~/.scratch<CR>

" Clear out a search
nnoremap <leader><space> :noh<cr>

let g:Powerline_symbols = 'fancy'

" GUI
set guifont=Bitstream\ Vera\ Sans\ Mono\ for\ Powerline:h13
set antialias
set mouse=a
set guioptions-=T " no toolbar set guioptions-=m " no menus
set guioptions-=r " no scrollbar on the right
set guioptions-=R " no scrollbar on the right
set guioptions-=l " no scrollbar on the left
set guioptions-=b " no scrollbar on the bottom
set guioptions=aiA

source ~/.vim/russian             " Russian key maps.

set background=dark
colorscheme gruvbox

let g:pymode_options_max_line_length = 180
