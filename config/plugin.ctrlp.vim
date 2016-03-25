" CTRL-P configuration
" exclude _, \, ;, ... from search strings
" so class names can be matched more easily
let g:ctrlp_working_path_mode = ''
let g:ctrlp_abbrev = {
    \ 'gmode': 'i',
    \ 'abbrevs': [
        \ {
            \ 'pattern': '_',
            \ 'expanded': ''
        \ },
        \ {
            \ 'pattern': '\\',
            \ 'expanded': ''
        \ },
        \ {
            \ 'pattern': ';',
            \ 'expanded': ''
        \ }
    \ ]
\ }

let g:ctrlp_custom_ignore = '\v\.*/(node_modules|vendor|bower_components|var/cache|app(/main)?/cache)/\.*'

nnoremap <leader>f :CtrlP<CR>

" search in CtrlP for selected text
" or current word under cursor
nmap <leader>fw :CtrlP<CR><C-\>w
nmap <leader>fW yW:CtrlP<CR><C-\>c
vmap <leader>fw y:CtrlP<CR><C-\>c


