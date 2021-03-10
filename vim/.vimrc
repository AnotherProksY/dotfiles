set rtp+=~/.config/vim

" Mappings
map <silent> <C-y> "+y<CR>
vnoremap < <gv " Shift+> keys
vnoremap > >gv " Shift+< keys

if has('gui_running')
    nmap <C-h> <C-w>h
    nmap <C-j> <C-w>j
    nmap <C-k> <C-w>k
    nmap <C-l> <C-w>l
endif

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
au BufNewFile,BufRead /private/**/pass** setlocal noundofile

" GUI
set guifont=Monaco:h16
set guioptions=
set antialias

" Colors
colorscheme gruvbox
set background=dark
