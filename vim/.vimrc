set rtp+=~/.config/vim

if has("gui_running")
    call plug#begin('~/.config/vim/plugged')
    Plug 'AnotherProksY/ez-window'
    Plug 'tpope/vim-fugitive'
    Plug 'airblade/vim-gitgutter'
    Plug 'morhetz/gruvbox'
    call plug#end()
endif

" Mappings
map <silent> <C-y> "+y<CR>
vnoremap < <gv " Shift+> keys
vnoremap > >gv " Shift+< keys
command! W execute 'w !sudo tee % > /dev/null' <bar> edit!

" Standard settings
syntax on
set number
set tabstop=4
set shiftwidth=4
set expandtab
set ai
set si
set showmatch
set so=7
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Autocomplete
set shortmess+=c   " Shut off completion messages

" Search
set hlsearch
set incsearch
set ignorecase
set smartcase
set wildmenu
set wildignore=*.o,*~,*.pyc
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
set lazyredraw

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
let g:netrw_banner=0
hi Comment ctermfg=green
