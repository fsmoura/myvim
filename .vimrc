syntax on

colorscheme Monokai

call plug#begin('~/.vim/plugged')
Plug 'flazz/vim-colorschemes'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'editorconfig/editorconfig-vim'
call plug#end()

:map <C-n> :NERDTreeToggle


