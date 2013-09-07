set guifont=Inconsolata:h28
set linespace=3
colorscheme solarized
set background=dark
set guioptions-=T

" ---------------------------------------------------------------------------
" GUI/MacVim options
" ---------------------------------------------------------------------------
set guioptions=egmrt

" Allow color schemes to do bright colors without forcing bold.
if &t_Co == 8 && $TERM !~# '^linux'
   set t_Co=16
   endif