set guioptions=egmrt

" Allow color schemes to do bright colors without forcing bold.
if &t_Co == 8 && $TERM !~# '^linux'
set t_Co=16
endif