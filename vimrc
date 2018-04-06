syntax on

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'editorconfig/editorconfig-vim'
Plug 'mattn/emmet-vim'
Plug 'flazz/vim-colorschemes'
call plug#end()

colorscheme gruvbox
set background=dark

:map <C-n> :NERDTreeToggle
:map <C-l> :Emmet
