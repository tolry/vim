" php-cs-fixe plugin
" let g:php_cs_fixer_path = "/usr/local/bin/php-cs-fixer" " define the path to the php-cs-fixer.phar
let g:php_cs_fixer_rules = '{"@PSR2": true, "@Symfony": true, "array_syntax": {"syntax": "short"}}'
let g:php_cs_fixer_php_path = "php"             " Path to PHP

"let g:php_cs_fixer_level = "all"                " which level ?
"let g:php_cs_fixer_config = "default"           " configuration
"let g:php_cs_fixer_fixers_list = "linefeed,indentation,trailing_spaces,unused_use,php_closing_tag,return,visibility,braces,phpdoc_params,eof_ending,extra_empty_lines,controls_spaces,elseif"             " List of fixers
let g:php_cs_fixer_enable_default_mapping = 1   " Enable the mapping by default (<leader>pcd)
let g:php_cs_fixer_dry_run = 0                  " Call command with dry-run option
let g:php_cs_fixer_verbose = 0                  " Return the output of command if 1, else an inline information.

