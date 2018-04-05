syntax on

call plug#begin('~/.vim/plugged')
Plug 'flazz/vim-colorschemes'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'editorconfig/editorconfig-vim'
call plug#end()

colorscheme Monokai

:map <C-n> :NERDTreeToggle


