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

" include bundles here
Plug 'gmarik/vundle'
" additional syntax highlighting
Plug 'evidens/vim-twig'
Plug 'plasticboy/vim-markdown'
Plug 'vim-scripts/smarty.vim'

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

Plug 'stephpy/vim-php-cs-fixer'
Plug 'alvan/vim-php-manual'
Plug 'arnaud-lb/vim-php-namespace'

Plug 'gregsexton/MatchTag'
Plug 'jakobwesthoff/argumentrewrap'
Plug 'pangloss/vim-javascript'
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'majutsushi/tagbar'
Plug 'junegunn/vim-easy-align'
Plug 'Chiel92/vim-autoformat'
Plug 'ervandew/supertab'

" Snippets
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'honza/vim-snippets'
Plug 'garbas/vim-snipmate'

Plug 'chrisbra/NrrwRgn'

Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'noahfrederick/vim-skeleton'
Plug 'tpope/vim-repeat'

" Plug 'ryanoasis/vim-devicons'

call plug#end()
