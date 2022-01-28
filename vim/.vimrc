" Mappings
map <silent> <C-y> "+y<CR>
command! W execute 'w !sudo tee % > /dev/null' <bar> edit!
command! MakeTags !/opt/homebrew/bin/ctags -R .
noremap <F12> <Esc>:syntax sync fromstart<CR>
inoremap <F12> <C-o>:syntax sync fromstart<CR>

" Settings
syntax on
set tabstop=2
set shiftwidth=2
set expandtab
set ai
set number
set hlsearch
set autochdir
set wrap
set linebreak
set ruler
set mouse=nv

filetype plugin on
filetype indent on

" Colors
colorscheme default
hi Comment ctermfg=34
