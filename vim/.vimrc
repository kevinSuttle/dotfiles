" ----------------------------------------------------------------------------
" Vundle plugin manager
" ----------------------------------------------------------------------------
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" original repos on github
Bundle 'tpope/vim-rails'
Bundle 'rking/ag.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'csscomb/CSScomb-for-Vim'
Bundle 'mattn/emmet-vim'
Bundle 'sjl/gundo.vim'
Bundle 'hallettj/jslint.vim'
Bundle 'Shougo/neocomplcache.vim'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/nerdtree'
Bundle 'myusuf3/numbers.vim'
Bundle 'scrooloose/syntastic'
Bundle 'godlygeek/tabular'
Bundle 'majutsushi/tagbar'
Bundle 'bling/vim-airline'
Bundle 'kchmck/vim-coffee-script'
Bundle 'altercation/vim-colors-solarized'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'tpope/vim-fugitive'
Bundle 'airblade/vim-gitgutter'
Bundle 'tpope/vim-surround'
Bundle 'vim-ruby/vim-ruby'

" vim-airline
let g:airline_symbols = {}
" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

"NERDTree
autocmd vimenter * if !argc() | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"CtrlP
set runtimepath^=~/.vim/bundle/ctrlp.vim

" ----------------------------------------------------------------------------
" General config
" ----------------------------------------------------------------------------
set nocompatible
set autoread
set autowrite
set hidden
set visualbell t_vb=
filetype plugin indent on

" ----------------------------------------------------------------------------
" Remapping
" ----------------------------------------------------------------------------

"" Yank text to the OS X clipboard
noremap <leader>y "*y
noremap <leader>yy "*Y"

"" Preserve indentation while pasting text from the OS X clipboard
noremap <leader>p :set paste<CR>:put  *<CR>:set nopaste<CR>

set backspace=indent,eol,start
inoremap jk <ESC>
set pastetoggle=<F2>
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
nnoremap Y y$
map j gj
map k gk

map <C-n> :NERDTreeToggle<CR>
" ----------------------------------------------------------------------------
" Text Formatting / Color Highlighting
" ----------------------------------------------------------------------------
syntax enable
let g:solarized_termtrans = 1
colorscheme solarized

set encoding=utf-8
set expandtab
set nosmarttab
set nowrap
set softtabstop=2
set shiftwidth=2
set tabstop=4
set autoindent
set linebreak

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
set virtualedit=onemore

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

