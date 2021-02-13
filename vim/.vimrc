" Mappings
map <C-f> :exec ":args `grep -Rl ".input("Grep flags: ")." '".input("Grep word: ")."' *` <bar> tab all"<CR>
map <silent> <C-y> "+y<CR>

" Standard settings
syntax on
set number
set tabstop=4
set shiftwidth=4
set expandtab
set ai
set si
set showmatch

" Autocomplete
set shortmess+=c   " Shut off completion messages

" Search
set hlsearch
set incsearch
set ignorecase
set smartcase

" Other
set autochdir
set wrap
set linebreak
set ttyfast
set ruler
set autoread
set nobackup
set nowb
set noswapfile
filetype plugin on

" Colors
set rtp+=~/.config/vim/gruvbox/
colorscheme gruvbox
set background=dark
