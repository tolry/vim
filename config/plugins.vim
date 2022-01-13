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

" color schemes
Plug 'arcticicestudio/nord-vim'
Plug 'flazz/vim-colorschemes'


Plug 'bling/vim-airline'
Plug 'powerline/fonts'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" get empty php files already containing <?php and more
Plug 'noahfrederick/vim-skeleton'

Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'

Plug 'wincent/terminus'

Plug 'fourjay/vim-phpt'

call plug#end()
