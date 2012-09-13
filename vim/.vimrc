" ----------------------------------------------------------------------------
" Pathogen
" ----------------------------------------------------------------------------
filetype off " Pathogen needs to run before plugin indent on
runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect('~/Github/dotfiles/vim/.vim/bundle')
call pathogen#runtime_append_all_bundles()
call pathogen#helptags() " generate helptags for everything in 'runtimepath'

" ----------------------------------------------------------------------------
" Runtime config
" ----------------------------------------------------------------------------
set nocompatible " Use Vim settings, rather than Vi settings (much better!).
set autoread
set hidden

filetype plugin indent on " Enable file type detection and do language-dependent indenting.

" ----------------------------------------------------------------------------
" Remapping
" ----------------------------------------------------------------------------
set backspace=indent,eol,start " Make backspace behave in a sane manner.
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
set encoding=utf-8 " Necessary to show Unicode glyphs
set expandtab " expand tabs to spaces
set nosmarttab

" ---------------------------------------------------------------------------
"  UI
" ---------------------------------------------------------------------------
set nonumber
set ch=2           " command line height
set laststatus=2   " Always show the statusline
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

