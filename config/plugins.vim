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
Plug 'junegunn/vim-emoji'

" git, svn, ...
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'

"html/css
Plug 'mattn/emmet-vim'

Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'powerline/fonts'
Plug 'severin-lemaignan/vim-minimap'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'w0rp/ale'
Plug 'scrooloose/nerdcommenter'

Plug 'stephpy/vim-php-cs-fixer', { 'for': 'php' }
Plug 'alvan/vim-php-manual', { 'for': 'php' }
Plug 'arnaud-lb/vim-php-namespace', { 'for': 'php' }
Plug 'fatih/vim-go', { 'for': 'go' }

Plug 'gregsexton/MatchTag'
Plug 'jakobwesthoff/argumentrewrap'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'

Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeTabsToggle', 'NERDTreeTabsFind'] }
Plug 'jistr/vim-nerdtree-tabs', { 'on': ['NERDTreeToggle', 'NERDTreeTabsToggle', 'NERDTreeTabsFind'] }

Plug 'majutsushi/tagbar'
Plug 'junegunn/vim-easy-align'

" Snippets
Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'

" get empty php files already containing <?php and more
Plug 'noahfrederick/vim-skeleton'

Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'

" Plug 'ryanoasis/vim-devicons'

Plug 'wincent/terminus'
Plug 'Chiel92/vim-autoformat'

" pip3 install --user neovim [jedi psutil setproctitle]
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1

call plug#end()
