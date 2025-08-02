" Mappings
let mapleader = " "                                         " Map leader to space
vnoremap <silent> <C-y> "+y<CR>                             " Yank into clipboard
command! W execute 'w !sudo tee % > /dev/null' <bar> edit!  " Save if sudo needs
nnoremap <Leader>c !/opt/homebrew/bin/ctags -R .<CR><CR>    " Create tags in current project
noremap <F12> <Esc>:syntax sync fromstart<CR>               " Refresh syntax highlight in Normal
inoremap <F12> <C-o>:syntax sync fromstart<CR>              " Refresh syntax highlight in Insert
command Todo noautocmd vimgrep /TODO\|FIXME/j ** | cw       " Add all TODO and FIXME to quickfix list
nnoremap <C-j> :cn<CR>                                      " Move to next quickfix item
nnoremap <C-k> :cp<CR>                                      " Move to previous quickfix item
vnoremap < <gv                                              " Easy indent in visual mode
vnoremap > >gv                                              " Easy un-indent in visual mode
nnoremap <Leader>rc :%s/\<<C-r><C-w>\>/<C-r><C-w>           " rename words in all files
vnoremap <Leader>rc y:%s/<C-r>"/<C-r>"                      " same command for visual
nnoremap <Esc> :nohlsearch<CR>                              " Disable highlight search results
nnoremap \ :Lexplore<CR>                                    " Open Exporer (Netrw) on left side
nnoremap <leader>" <cmd>registers<CR>                       " Show all registers
nnoremap gd <C-]>                                           " Go to definition

" Center screen using zz while scrolling or incsearch
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz
nnoremap n nzzzv
nnoremap N Nzzzv

" Fast tab switching
nnoremap <leader>1 1gt
nnoremap <leader>2 2gt
nnoremap <leader>3 3gt
nnoremap <leader>4 4gt
nnoremap <leader>5 5gt
nnoremap <leader>6 6gt
nnoremap <leader>7 7gt
nnoremap <leader>8 8gt
nnoremap <leader>9 9gt
nnoremap <leader>0 :tablast<CR>

" Buffer switch
function! ToggleQuickFix()
  if empty(filter(getwininfo(), 'v:val.quickfix'))
    copen
  else
    cclose
  endif
endfunction
nnoremap <leader>w :call ToggleQuickFix()<cr>               " Toggle quickfix list
nnoremap <Tab> :b#<CR>                                      " Fast switch between buffers
nnoremap <Leader>d :bd<CR>                                  " Delete buffer

" Settings
syntax on
set showmode
set showcmd
set nocompatible
set number relativenumber
set ruler
set scrolloff=10
set mouse=a
set encoding=UTF-8
set t_Co=256
set history=1000
set backupdir=~/.vimbackup

" Indentation width
set smarttab
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
set autoindent
autocmd Filetype html setlocal tabstop=2 shiftwidth=2 expandtab

" Disable auto commenting in a new line
autocmd Filetype * setlocal formatoptions-=c formatoptions-=r  formatoptions-=o

" Search
set hlsearch
set ignorecase
set incsearch
set smartcase
set showmatch

" Wrapping lines
set wrap
set linebreak
set breakindent

" Ability to use Normal mode in RU layout
set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz
set backspace=start,eol,indent
set splitbelow splitright

" Autocomplete
set wildmenu
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx
set path+=**
set omnifunc=syntaxcomplete#Complete
set completeopt=menu,menuone,noinsert,noselect
filetype on
filetype plugin on
filetype indent on
runtime macros/matchit.vim
autocmd FileType html let b:match_words='<:>,<\@<=\([^/][^ \t>]*\)[^>]*\%(>\|$\):<\@<=/\1>'

" Closing compaction in insert mode
inoremap [ []<left>
inoremap ( ()<left>
inoremap { {}<left>
inoremap /* /**/<left><left>

" NetRw
let g:netrw_banner=0                                        " Get rid of banner
let g:netrw_liststyle=3                                     " Tree style
let g:netrw_showhide=1                                      " Show hidden files
let g:netrw_browse_split=3                                  " Open file in new tab
let g:netrw_winsize=25                                      " Win size width 25

" Colors
colorscheme default
hi Comment ctermfg=darkgray
