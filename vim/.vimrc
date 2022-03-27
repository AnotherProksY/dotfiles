" Mappings
vnoremap <silent> <C-y> "+y<CR>
command! W execute 'w !sudo tee % > /dev/null' <bar> edit!
command! MakeTags !/opt/homebrew/bin/ctags -R .
noremap <F12> <Esc>:syntax sync fromstart<CR>
inoremap <F12> <C-o>:syntax sync fromstart<CR>
command Todo noautocmd vimgrep /TODO\|FIXME/j ** | cw
map <C-j> :cn<CR>
map <C-k> :cp<CR>

" Settings
syntax on
set tabstop=4
set smarttab
set shiftwidth=4
set expandtab
set autoindent
set number
set hlsearch
set ignorecase
set incsearch
set smartcase
set autochdir
set wrap
set linebreak
set breakindent
set ruler
set mouse=nv
set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz

filetype plugin on
filetype indent on

" Colors
colorscheme default
hi Comment ctermfg=34
