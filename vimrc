set nocompatible " be iMproved
filetype off     " required!

" includes
source ~/.vim/config/plugins.vim

"
"common
"

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

colorscheme nord

syntax enable
set synmaxcol=400 " only syntax highlight shorter lines (major performance impact) - e.g. excludes giant js, xml, ... file containing one line only
set lazyredraw " performance

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
" important e.g. for webpack watch, sass, nfs, ...
set backupcopy=yes

set tags+=.tags,.tags-src,.tags-vendors

" open reference in new tab
nnoremap <silent><Leader><C-]> <C-w><C-]><C-w>T

" backup files not needed
set nobackup
set nowritebackup
set noswapfile

set number

set linebreak breakindent breakindentopt=shift:-2


command XmlFormat %!xmllint --format -

"
" indentation
"
filetype indent on
set autoindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"

"
" folding
"
set foldenable
set foldlevel=99
set foldnestmax=4
set foldmethod=indent

" Create directory on save if it does not exist
" http://stackoverflow.com/questions/4292733/vim-creating-parent-directories-on-save
augroup BWCCreateDir
    au!
    autocmd BufWritePre * if expand("<afile>")!~#'^\w\+:/' && !isdirectory(expand("%:h")) | execute "silent! !mkdir -p ".shellescape(expand('%:h'), 1) | redraw! | endif
augroup END

"
"fzf
"
nnoremap ; :Buffers<CR>
nnoremap <leader>f :Files<CR>
nnoremap <leader>fg :GitFiles<CR>
nnoremap <leader>ft :Tags<CR>

nmap <leader>fw :call fzf#vim#files('', {'options': '-q '.shellescape(expand('<cword>'))})<CR>

command FZFPreview :call fzf#vim#gitfiles('', fzf#vim#with_preview('right'))

"
" airline
"
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0

let g:Powerline_symbols='fancy'
let g:airline_powerline_fonts = 1
let g:airline_theme='nord'


source ~/.vim/config/script.rename.vim

if filereadable(expand("~/.vimrc.local"))
    source ~/.vimrc.local
endif
