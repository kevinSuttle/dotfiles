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
set hidden

filetype plugin indent on

" ----------------------------------------------------------------------------
" Remapping
" ----------------------------------------------------------------------------
set backspace=indent,eol,start
inoremap jj <ESC>
set pastetoggle=<F2>
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

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

" ---------------------------------------------------------------------------
" GUI/MacVim options 
" ---------------------------------------------------------------------------
set guioptions=egmrt

" ---------------------------------------------------------------------------
" Strip all trailing whitespace in file
" ---------------------------------------------------------------------------
function! StripWhitespace ()
    exec ':%s/ \+$//gc'
    endfunction
    map ,s :call StripWhitespace ()<CR>

