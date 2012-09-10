" Use Vim settings, rather than Vi settings (much better!).
set nocompatible

" ----------------------------------------------------------------------------
" Text Formatting
" ----------------------------------------------------------------------------
syntax on
syntax enable
set nonumber
set background=dark
colorscheme solarized

" ----------------------------------------------------------------------------
" Remapping
" ----------------------------------------------------------------------------
" Make backspace behave in a sane manner.
set backspace=indent,eol,start
" exit to normal mode with 'jj'
inoremap jj <ESC>

" Enable file type detection and do language-dependent indenting.
filetype plugin indent on

" ---------------------------------------------------------------------------
" Strip all trailing whitespace in file
" ---------------------------------------------------------------------------

function! StripWhitespace ()
    exec ':%s/ \+$//gc'
    endfunction
    map ,s :call StripWhitespace ()<CR>
