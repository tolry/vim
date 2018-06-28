let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_yarp = 1
let g:deoplete#min_pattern_length = 3
let g:deoplete#auto_complete_delay = 500
let g:deoplete#auto_refresh_delay = 500

inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
inoremap <expr><s-tab> pumvisible() ? "\<c-p>" : "\<s-tab>"
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

let g:deoplete#ignore_sources = get(g:, 'deoplete#ignore_sources', {})
let g:deoplete#ignore_sources.php = ['omni']
