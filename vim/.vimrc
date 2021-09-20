" No VI support!
set nocompatible

if has("gui_running")
  call plug#begin('~/.vim/plugged')
  Plug 'ayu-theme/ayu-vim'
  Plug 'tpope/vim-fugitive'
  Plug 'AnotherProksY/ez-window'
  Plug 'preservim/tagbar'
  call plug#end()
endif

" Mappings
map <silent> <C-y> "+y<CR>
command! W execute 'w !sudo tee % > /dev/null' <bar> edit!
command! MakeTags !/opt/homebrew/bin/ctags -R .
noremap <F6> <Esc>:syntax sync fromstart<CR>
inoremap <F6> <C-o>:syntax sync fromstart<CR>

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
set autoindent
set smartindent
set breakindent
set breakindentopt=shift:2,min:40,sbr

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
set t_Co=256

" Filetype
filetype plugin on
filetype indent on
au BufNewFile,BufRead /private/**/pass** setlocal noundofile

" Colors
hi Comment ctermfg=34
