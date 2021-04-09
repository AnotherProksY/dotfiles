" No VI support!
set nocompatible

" Mappings
map <silent> <C-y> "+y<CR>
command! W execute 'w !sudo tee % > /dev/null' <bar> edit!
command! MakeTags !ctags -R .

" Standard settings
syntax on
set number
set tabstop=2
set shiftwidth=2
set expandtab
set ai
set si
set showmatch
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Autocomplete
set shortmess+=c   " Shut off completion messages

" Search
set incsearch
set ignorecase
set smartcase
set wildmenu
set wildignore=*.o,*~,*.pyc
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store

" Other
set autochdir
set wrap
set linebreak
set ttyfast
set lazyredraw
set ruler
set autoread
set path+=**

" Filetype
filetype plugin on
filetype indent on
au BufNewFile,BufRead /private/**/pass** setlocal noundofile

" Colors
colorscheme peachpuff
hi Comment ctermfg=green
