let PHP_autoformatcomment = 1

" {{{ Settings

" Auto expand tabs to spaces
setlocal expandtab

" Auto indent after a {
setlocal autoindent
setlocal smartindent

" Linewidth to 79, because of the formatoptions this is only valid for
" comments
setlocal textwidth=79
setlocal formatoptions=qrocb

" Do not wrap lines automatically
setlocal nowrap

" Correct indentation after opening a phpdocblock and automatic * on every
" line
setlocal formatoptions=qroct

" Use php syntax check when doing :make
setlocal makeprg=php\ -l\ %

" Use errorformat for parsing PHP error output
setlocal errorformat=%m\ in\ %f\ on\ line\ %l

" Switch syntax highlighting on, if it was not
if !exists("g:syntax_on")
    syntax
endif

" Use pman for manual pages
setlocal keywordprg=pman

" Highlight trailing whitespaces
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" Getter/Setter Plugin
nmap <buffer> <LocalLeader>9 <Plug>PhpgetsetInsertGetterSetter
nmap <buffer> <LocalLeader>o <Plug>PhpgetsetInsertGetterOnly
nmap <buffer> <LocalLeader>O <Plug>PhpgetsetInsertSetterOnly
nmap <buffer> <LocalLeader>I <Plug>PhpgetsetInsertBothGetterSetter

