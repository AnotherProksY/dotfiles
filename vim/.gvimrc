set guifont=Menlo:h16
set guioptions=
set antialias
set termguicolors

let ayucolor="light"
colorscheme ayu

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

