set nocompatible " be iMproved
filetype off     " required!

" includes
source ~/.vim/config/plugins.vim

source ~/.vim/config/common.vim

source ~/.vim/config/commands.vim
source ~/.vim/config/common.indentation.vim
source ~/.vim/config/common.folding.vim
source ~/.vim/config/common.auto-create-directory.vim

source ~/.vim/config/plugin.vim-php-cs-fixer.vim
source ~/.vim/config/plugin.ctrlp.vim
source ~/.vim/config/plugin.easy-align.vim
source ~/.vim/config/plugin.nerdtree.vim
source ~/.vim/config/plugin.tagbar.vim
source ~/.vim/config/plugin.airline.vim

if v:version >= 800
    " Load all plugins now.
    " Plugins need to be added to runtimepath before helptags can be generated.
    packloadall
    " Load all of the helptags now, after plugins have been loaded.
    " All messages and errors will be ignored.
    silent! helptags ALL
    let g:airline#extensions#ale#enabled = 1
    let g:ale_php_phpcs_standard = 'PSR2'
else
    source ~/.vim/config/plugin.syntastic.vim
endif

source ~/.vim/config/plugin.argumentrewrap.vim
source ~/.vim/config/plugin.autoformat.vim
source ~/.vim/config/plugin.vim-php-namespaces.vim
source ~/.vim/config/plugin.terminus.vim
source ~/.vim/config/plugin.jsx.vim

source ~/.vim/config/script.phpnamespace.vim
source ~/.vim/config/script.rename.vim

if filereadable(expand("~/.vimrc.local"))
    source ~/.vimrc.local
endif
