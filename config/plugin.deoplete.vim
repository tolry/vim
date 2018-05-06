let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_yarp = 1
let g:auto_complete_delay = 500
let g:auto_refresh_delay = 500

inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
inoremap <expr><s-tab> pumvisible() ? "\<c-p>" : "\<s-tab>"
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
