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
source ~/.vim/config/plugin.emmet.vim
source ~/.vim/config/plugin.nerdtree.vim
source ~/.vim/config/plugin.tagbar.vim
source ~/.vim/config/plugin.airline.vim

if v:version >= 800
    source ~/.vim/config/plugin.ale.vim
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
