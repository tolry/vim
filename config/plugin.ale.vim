" Load all plugins now.
" Plugins need to be added to runtimepath before helptags can be generated.
packloadall
" Load all of the helptags now, after plugins have been loaded.
" All messages and errors will be ignored.
silent! helptags ALL

let g:airline#extensions#ale#enabled = 1
let g:ale_php_phpcs_standard = 'PSR2'

" do not lint while changing text
" instead lint when insert mode is 'finished'
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 1

" copen/lopen automatically if errors exist
" let g:ale_open_list = 1

let g:ale_linters = {
\   'php': ['hack', 'langserver', 'php', 'phpcs', 'phpmd', 'phpstan']
\}

let g:ale_sign_column_always = 1
let g:ale_sign_error = '⚑'
let g:ale_sign_warning = '⚐'
