" Basic settings
set guifont=Menlo:h16
set guioptions=
set antialias
set termguicolors

let ayucolor="light"
colorscheme ayu


" TagBar settings
nmap <F5> :TagbarToggle<CR>
let g:tagbar_ctags_bin = "/opt/homebrew/bin/ctags"
let g:tagbar_type_groovy = {
    \ 'ctagstype' : 'groovy',
    \ 'kinds'     : [
        \ 'p:package:1',
        \ 'c:classes',
        \ 'i:interfaces',
        \ 't:traits',
        \ 'e:enums',
        \ 'm:methods',
        \ 'f:fields:1'
    \ ]
\ }


" Explorer settings
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 15

map <silent> <C-E> :Lexplore<CR>
