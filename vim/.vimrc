" ----------------------------------------------------------------------------
" Pathogen plugins
" ----------------------------------------------------------------------------
filetype off " Pathogen needs to run before plugin indent on
runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect('$DOTFILES/vim/.vim/bundle')
call pathogen#runtime_append_all_bundles()
call pathogen#helptags() " generate helptags for everything in 'runtimepath'

"CtrlP"
set runtimepath^=~/.vim/bundle/ctrlp.vim

"" Vim-Powerline
let g:Powerline_symbols = 'fancy'
if ! has('gui_running')
    set ttimeoutlen=10
    augroup FastEscape
        autocmd!
        au InsertEnter * set timeoutlen=0
        au InsertLeave * set timeoutlen=1000
    augroup END
endif

" Powerline
set rtp+=$DOTFILES/vim/.vim/bundle/powerline/bindings/vim

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

