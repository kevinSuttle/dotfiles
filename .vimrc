" configure Vundle
filetype on " without this vim emits a zero exit status, later, because of :ft off
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" install Vundle bundles
if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
endif
if filereadable(expand("~/.vimrc.bundles.local"))
    source ~/.vimrc.bundles.local
endif

colorscheme Tomorrow-Night-Eighties
filetype plugin indent on
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
set nocompatible
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
" GUI/MacVim options
" ---------------------------------------------------------------------------
set guioptions=egmrt
set guifont=Bitstream\ Vera\ Sans\ Mono:h14
if (&t_Co == 256 || has('gui_running'))
  if ($TERM_PROGRAM == 'iTerm.app')
    colorscheme tomorrow-night
  else
      if filereadable(expand("~/.vim/bundle/vim-colors-solarized/colors/solarized.vim"))
        let g:solarized_termcolors=256
        let g:solarized_termtrans=1
        let g:solarized_contrast="high"
        let g:solarized_visibility="high"
        color solarized             " Load a colorscheme
    endif
  endif
endif

" ---------------------------------------------------------------------------
" NERDTree
" ---------------------------------------------------------------------------
let g:NERDTreeShowHidden=1
map <C-n> :NERDTreeToggle<CR>

" ---------------------------------------------------------------------------
" CtrlP
" ---------------------------------------------------------------------------
set runtimepath^=~/.vim/bundle/ctrlp.vim

" ---------------------------------------------------------------------------
" Strip all trailing whitespace in file
" ---------------------------------------------------------------------------
function! StripWhitespace ()
exec ':%s/ \+$//gc'
endfunction
map ,s :call StripWhitespace ()<CR>

" ---------------------------------------------------------------------------
" Use The Silver Searcher https://github.com/ggreer/the_silver_searcher
" ---------------------------------------------------------------------------
if executable('ag')
  let g:ackprg = 'ag --nogroup --column'

  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

" ---------------------------------------------------------------------------
" Source local modifications
" ---------------------------------------------------------------------------
if filereadable(expand("~/.vimrc.local"))
  " In your .vimrc.local, you might like:
  "
  " set autowrite
  " set nocursorline
  " set nowritebackup
  " set whichwrap+=<,>,h,l,[,] " Wrap arrow keys between lines
  "
  " autocmd! bufwritepost .vimrc source ~/.vimrc
  " noremap! jj <ESC>
  source ~/.vimrc.local
endif
