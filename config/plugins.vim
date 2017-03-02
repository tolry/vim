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
Plug 'trusktr/seti.vim'

" git, svn, ...
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'

"html/css
Plug 'mattn/emmet-vim'

Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'powerline/fonts'

Plug 'mileszs/ack.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/syntastic'
Plug 'scrooloose/nerdcommenter'

Plug 'stephpy/vim-php-cs-fixer', { 'for': 'php' }
Plug 'alvan/vim-php-manual', { 'for': 'php' }
Plug 'arnaud-lb/vim-php-namespace', { 'for': 'php' }

Plug 'gregsexton/MatchTag'
Plug 'jakobwesthoff/argumentrewrap'
Plug 'pangloss/vim-javascript'

Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'

Plug 'majutsushi/tagbar'
Plug 'junegunn/vim-easy-align'
Plug 'Chiel92/vim-autoformat'
Plug 'ervandew/supertab'
Plug 'Yggdroot/indentLine'

" Snippets
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'honza/vim-snippets'
Plug 'garbas/vim-snipmate'

" get empty php files already containing <?php and more
Plug 'noahfrederick/vim-skeleton'

Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'terryma/vim-multiple-cursors'

" Plug 'ryanoasis/vim-devicons'

Plug 'wincent/terminus'

call plug#end()
