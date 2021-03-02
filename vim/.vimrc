set rtp+=~/.config/vim

" Mappings
map <silent> <C-y> "+y<CR>
vnoremap < <gv " Shift+> keys
vnoremap > >gv " Shift+< keys

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
filetype indent on

" GUI
set guifont=Monaco:h16
set guioptions=
set antialias

" Colors
colorscheme gruvbox
set background=dark
