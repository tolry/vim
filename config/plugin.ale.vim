" Load all plugins now.
" Plugins need to be added to runtimepath before helptags can be generated.
packloadall
" Load all of the helptags now, after plugins have been loaded.
" All messages and errors will be ignored.
silent! helptags ALL

let g:airline#extensions#ale#enabled = 1
let g:ale_php_phpcs_standard = 'PSR2'

