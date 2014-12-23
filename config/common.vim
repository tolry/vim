" Use filetype plugins, e.g. for PHP
filetype plugin on

let mapleader      = ","
let maplocalleader = ","

" %% maps to current directory
cnoremap %% <C-R>=expand('%:h').'/'<cr>
" hide gutter
map <Leader>h :sign unplace *<CR>
" remove trailing whitespace
autocmd BufWritePre * :%s/\s\+$//e
" folding toggle to space
nnoremap <Space> za
vnoremap <Space> za

" Set colors
set t_Co=256
" tmux thingy, dont know why
set t_ut=
let g:CSApprox_attr_map = { 'bold' : 'bold', 'italic' : '', 'sp' : '' }
colorscheme jellybeans

syntax enable

set nopaste
set ignorecase
set hlsearch

set encoding=utf-8
" display filename
set modeline
set ls=2

" file autocomplete
set wildmenu
set wildmode=list:longest
set wildignore+=*/app/main/cache/*,*/app/cache/*,*/vendor/*,*/var/cache/*,*/bower_components/*,*/node_modules/*
set pastetoggle=<F2>

