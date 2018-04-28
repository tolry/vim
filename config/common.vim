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
if v:version >= 800
    set termguicolors
else
    set t_Co=256
endif
" clearing uses background color
" important if running in tmux and
" them bg color differs from terminal bg color
set t_ut=

let g:CSApprox_attr_map = { 'bold' : 'bold', 'italic' : '', 'sp' : '' }

" colorscheme Tomorrow-Night

" let g:gruvbox_contrast_dark="hard"
" colorscheme gruvbox
" set background=dark

" let g:neodark#background = '#202020'
" let g:neodark#background = '#2A3C46'
colorscheme neodark

syntax enable
set synmaxcol=200 " only syntax highlight short lines (major performance impact)

set nopaste
set ignorecase
set smartcase
set hlsearch

set encoding=utf-8
" display filename
set modeline
set ls=2

" file autocomplete
set wildmenu
set wildmode=list:longest
set pastetoggle=<F2>

set cursorline

" automatically reindent on vim paste
nnoremap <silent><Leader>p p=`]
nnoremap <silent><Leader>P P=`]

" modify files when changing instead of overwriting them
" important e.g. for webpack watch
set backupcopy=yes

set tags+=.tags,.tags-src,.tags-vendors

" open reference in new tab
nnoremap <silent><Leader><C-]> <C-w><C-]><C-w>T

" backup files not needed
set nobackup
set nowritebackup
set noswapfile
