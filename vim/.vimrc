" ----------------------------------------------------------------------------
" Pathogen plugins
" ----------------------------------------------------------------------------
filetype off " Pathogen needs to run before plugin indent on
runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect('~/Github/dotfiles/vim/.vim/bundle')
call pathogen#runtime_append_all_bundles()
call pathogen#helptags() " generate helptags for everything in 'runtimepath'
set runtimepath^=~/.vim/bundle/ctrlp.vim

" ----------------------------------------------------------------------------
" General config
" ----------------------------------------------------------------------------
set nocompatible
set autoread
set autowrite
set hidden

filetype plugin indent on

" ----------------------------------------------------------------------------
" Remapping
" ----------------------------------------------------------------------------
set backspace=indent,eol,start
inoremap jk <ESC>
set pastetoggle=<F2>
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
nnoremap Y y$

" ----------------------------------------------------------------------------
" Text Formatting
" ----------------------------------------------------------------------------
syntax enable
set encoding=utf-8
set expandtab
set nosmarttab
set nowrap
set softtabstop=2
set shiftwidth=2
set tabstop=4

" ---------------------------------------------------------------------------
"  UI
" ---------------------------------------------------------------------------
set number
set ch=2
set laststatus=2
set wildmenu
set wildmode=list:longest,full
set title
set showmatch
set smarttab
set showcmd
set scrolloff=1
set sidescrolloff=5
set display+=lastline

" ---------------------------------------------------------------------------
" GUI/MacVim options 
" ---------------------------------------------------------------------------
set guioptions=egmrt

" Allow color schemes to do bright colors without forcing bold.
if &t_Co == 8 && $TERM !~# '^linux'
   set t_Co=16
   endif

" ---------------------------------------------------------------------------
" Strip all trailing whitespace in file
" ---------------------------------------------------------------------------
function! StripWhitespace ()
    exec ':%s/ \+$//gc'
    endfunction
    map ,s :call StripWhitespace ()<CR>

