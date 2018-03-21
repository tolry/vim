let vimplug_exists=expand('~/.vim/autoload/plug.vim')

if !filereadable(vimplug_exists)
  echo "Installing Vim-Plug..."
  echo ""
  silent !\curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  let g:not_finish_vimplug = "yes"

  autocmd VimEnter * PlugInstall
endif

" Required:
call plug#begin(expand('~/.vim/plugged'))

" standard settings
Plug 'tpope/vim-sensible'

" additional syntax highlighting
Plug 'lumiliet/vim-twig'
Plug 'plasticboy/vim-markdown'
Plug 'vim-scripts/smarty.vim'
Plug 'rust-lang/rust.vim'

" color schemes
Plug 'flazz/vim-colorschemes'
Plug 'morhetz/gruvbox'
Plug 'trusktr/seti.vim'
Plug 'KeitaNakamura/neodark.vim'

" git, svn, ...
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'

"html/css
Plug 'mattn/emmet-vim'

Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'powerline/fonts'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

if v:version >= 800
    Plug 'w0rp/ale'
else
    Plug 'scrooloose/syntastic'
endif
Plug 'scrooloose/nerdcommenter'

Plug 'stephpy/vim-php-cs-fixer', { 'for': 'php' }
Plug 'alvan/vim-php-manual', { 'for': 'php' }
Plug 'arnaud-lb/vim-php-namespace', { 'for': 'php' }

Plug 'gregsexton/MatchTag'
Plug 'jakobwesthoff/argumentrewrap'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'

Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'

Plug 'majutsushi/tagbar'
Plug 'junegunn/vim-easy-align'
Plug 'ervandew/supertab'

" Snippets
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'honza/vim-snippets', { 'tag': 'b2dda36fc77c6a15d2ec4ea273df610a55e92952' }
Plug 'garbas/vim-snipmate'

" get empty php files already containing <?php and more
Plug 'noahfrederick/vim-skeleton'

Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'terryma/vim-multiple-cursors'

" Plug 'ryanoasis/vim-devicons'

Plug 'wincent/terminus'

if v:version >= 704
    Plug 'Chiel92/vim-autoformat'
endif

call plug#end()
