set nocompatible

" configure Vundle
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" source Vundle bundles
if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
endif

Bundle 'gmarik/vundle'

filetype plugin indent on

if filereadable(expand("~/.vim/bundle/vim-tomorrow-theme/colors/Tomorrow-Night-Eighties.vim"))
  colorscheme Tomorrow-Night-Eighties
endif

inoremap jk <ESC>
map <C-n> :NERDTreeToggle<CR>
map <down> <nop>
map <left> <nop>
map <right> <nop>
map <up> <nop>
map j gj
map k gk
nnoremap Y y$
noremap <leader>p :set paste<CR>:put  *<CR>:set nopaste<CR> "" Preserve indentation while pasting
noremap <leader>y "*y Yank text to the OS X clipboard
noremap <leader>yy "*Y"
set autoindent
set autoread
set autowrite
set backspace=indent,eol,start
set ch=2
set display+=lastline
set encoding=utf-8
set expandtab
set hidden
set laststatus=2
set linebreak
set list " show trailing whitespace
set listchars=tab:▸\ ,trail:▫
set nosmarttab
set nowrap
set number
set pastetoggle=<F2>
set scrolloff=1
set shiftwidth=2
set showcmd
set showmatch
set sidescrolloff=5
set smarttab
set softtabstop=2
set tabstop=4
set title
set virtualedit=onemore
set visualbell t_vb=
set wildmenu
set wildmode=list:longest,full
syntax enable

" ---------------------------------------------------------------------------
" NERDTree
" ---------------------------------------------------------------------------
let g:NERDTreeShowHidden=1
let NERDTreeIgnore = ['\.swp$', '\.DS_Store$']
map <C-n> :NERDTreeToggle<CR>

" ---------------------------------------------------------------------------
" Strip all trailing whitespace in file
" ---------------------------------------------------------------------------
function! StripWhitespace ()
exec ':%s/ \+$//gc'
endfunction
map ,s :call StripWhitespace ()<CR>
