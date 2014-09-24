set nocompatible               " be iMproved
filetype off                   " required!
set nopaste

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" include bundles here
Plugin 'gmarik/vundle'
" additional syntax highlighting
Plugin 'Glench/Vim-Jinja2-Syntax'
Plugin 'evidens/vim-twig'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'plasticboy/vim-markdown'
Plugin 'groenewege/vim-less'
Plugin 'flazz/vim-colorschemes'
" colors in css-context are displayed correctly
Plugin 'ap/vim-css-color'

" git, svn, ...
Plugin 'mhinz/vim-signify'
Plugin 'tpope/vim-fugitive'

"html/css
Plugin 'mattn/emmet-vim'

Plugin 'bling/vim-airline'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdcommenter'
Plugin 'stephpy/vim-php-cs-fixer'
Plugin 'gregsexton/MatchTag'
Plugin 'jakobwesthoff/argumentrewrap'
Plugin 'pangloss/vim-javascript'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'vim-scripts/taglist.vim'
Plugin 'junegunn/vim-easy-align'
Plugin 'Chiel92/vim-autoformat'
Plugin 'tpope/vim-surround'

" Snippets
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'honza/vim-snippets'
Plugin 'garbas/vim-snipmate'

" Use filetype plugins, e.g. for PHP
filetype plugin on
filetype indent on
set autoindent

let mapleader      = ","
let maplocalleader = ","

" includes
source ~/.vim/scripts/PhpNamespace.vim

" Create directory on save if it does not exist
" http://stackoverflow.com/questions/4292733/vim-creating-parent-directories-on-save
augroup BWCCreateDir
    au!
    autocmd BufWritePre * if expand("<afile>")!~#'^\w\+:/' && !isdirectory(expand("%:h")) | execute "silent! !mkdir -p ".shellescape(expand('%:h'), 1) | redraw! | endif
augroup END

" %% maps to current directory
cnoremap %% <C-R>=expand('%:h').'/'<cr>

" Set colors
set t_Co=256
" tmux thingy, dont know why
set t_ut=
let g:CSApprox_attr_map = { 'bold' : 'bold', 'italic' : '', 'sp' : '' }
colorscheme jellybeans

syntax enable

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set ignorecase
set hlsearch
set nofoldenable

set encoding=utf-8
" display filename
set modeline
set ls=2

" file autocomplete
set wildmenu
set wildmode=list:longest
set wildignore+=*/app/main/cache/*,*/app/cache/*,*/vendor/**/tests/*

" php-cs-fixe plugin
" let g:php_cs_fixer_path = "/usr/local/bin/php-cs-fixer" " define the path to the php-cs-fixer.phar
let g:php_cs_fixer_level = "all"                " which level ?
let g:php_cs_fixer_config = "default"           " configuration
let g:php_cs_fixer_php_path = "php"             " Path to PHP
let g:php_cs_fixer_fixers_list = "linefeed,indentation,trailing_spaces,unused_use,php_closing_tag,return,visibility,braces,phpdoc_params,eof_ending,extra_empty_lines,controls_spaces,elseif"             " List of fixers
let g:php_cs_fixer_enable_default_mapping = 1   " Enable the mapping by default (<leader>pcd)
let g:php_cs_fixer_dry_run = 0                  " Call command with dry-run option
let g:php_cs_fixer_verbose = 0                  " Return the output of command if 1, else an inline information.

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

nnoremap <leader>f :CtrlP<CR>

" search in CtrlP for selected text
" or current word under cursor
nmap <leader>fw :CtrlP<CR><C-\>w
nmap <leader>fW yW:CtrlP<CR><C-\>c
vmap <leader>fw y:CtrlP<CR><C-\>c

" For visual mode (e.g. vip<Enter>)
vmap <Enter>   <Plug>(EasyAlign)

" For normal mode, with Vim movement (e.g. <Leader>aip)
nmap <Leader>a <Plug>(EasyAlign)

" NerdTreeTabs
map <Leader>n <plug>NERDTreeTabsToggle<CR>

" Taglist
map <Leader>t :TlistToggle<CR>
let Tlist_File_Fold_Auto_Close = 1
let Tlist_Sort_Type = "name"
let tlist_php_settings = "php;c:class;i:interface;f:function;d:constant"

" argumentsrewrap
nnoremap <silent> <leader>a :call argumentrewrap#RewrapArguments()<CR>

let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"

au Filetype html,xml,jinjahtml source ~/.vim/scripts/wrapwithtag.vim

" airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#branch#enabled = 1
let g:airline_left_sep= ' '
let g:airline_right_sep=' '
" let g:Powerline_symbols='fancy'
" let g:airline_powerline_fonts = 1
" let g:airline_theme='luna'

" hide gutter
map <Leader>h :sign unplace *<CR>

noremap <F3> :Autoformat<CR><CR>

" syntastic
let g:syntastic_php_checkers=['php', 'phpcs']
let g:syntastic_php_phpcs_args="--standard=PSR2 --report=csv --warning-severity=6"

" remove trailing whitespace
autocmd BufWritePre * :%s/\s\+$//e
