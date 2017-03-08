let PHP_autoformatcomment = 1
let PHP_vintage_case_default_indent = 1 " indent switch-case correctly
let php_folding = 1                     " Set PHP folding of classes and functions.
let php_htmlInStrings = 1               " Syntax highlight HTML code inside PHP strings.
let php_sql_query = 1                   " Syntax highlight SQL code inside PHP strings.

" Auto expand tabs to spaces
setlocal expandtab

" Auto indent after a {
setlocal autoindent
setlocal smartindent

" Do not wrap lines automatically
setlocal nowrap

" Correct indentation after opening a phpdocblock and automatic * on every
" line
setlocal formatoptions=qroct

" Use php syntax check when doing :make
setlocal makeprg=php\ -l\ %

" Use errorformat for parsing PHP error output
setlocal errorformat=%m\ in\ %f\ on\ line\ %l

" Use pman for manual pages
setlocal keywordprg=pman

" unfold everything by default
setlocal foldlevel=99
setlocal foldnestmax=4

setlocal number

" Highlight trailing whitespaces
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()
