" Mappings
vnoremap <silent> <C-y> "+y<CR>
command! W execute 'w !sudo tee % > /dev/null' <bar> edit!
command! MakeTags !/opt/homebrew/bin/ctags -R .
noremap <F12> <Esc>:syntax sync fromstart<CR>
inoremap <F12> <C-o>:syntax sync fromstart<CR>
command Todo noautocmd vimgrep /TODO\|FIXME/j ** | cw
nnoremap <C-j> :cn<CR>
nnoremap <C-k> :cp<CR>
vnoremap < <gv
vnoremap > >gv
nnoremap <Leader>rc :%s/\<<C-r><C-w>\>/<C-r><C-w>
vnoremap <Leader>rc y:%s/<C-r>"/<C-r>"
nnoremap ,<space> :nohlsearch<CR>
nnoremap <C-n> :Vexplore<CR>

" Settings
syntax on
set number
set tabstop=4
set smarttab
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent
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
set backspace=start,eol,indent
set hidden
set completeopt=menuone,noselect
set t_Co=256
let g:netrw_banner=0 " get rid of banner
let g:netrw_liststyle=3 " tree style
let g:netrw_browse_split=3 " open file in new tab
let g:netrw_winsize=25

filetype plugin on
filetype indent on

" Colors
colorscheme koehler
set background=dark
" hi Comment ctermfg=darkgray
