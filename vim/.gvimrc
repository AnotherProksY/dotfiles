set rtp+=~/.config/vim

call plug#begin('~/.config/vim/plugged')
Plug 'AnotherProksY/ez-window'
Plug 'morhetz/gruvbox'
call plug#end()

set guifont=Menlo:h16
set guioptions=
set antialias
let g:gruvbox_contrast_dark='soft'
colorscheme gruvbox
set background=dark
