" syntastic
let g:syntastic_php_checkers=['php', 'phpcs']
let g:syntastic_php_phpcs_args="--standard=PSR2 --report=csv --warning-severity=6"
let g:syntastic_aggregate_errors = 1

