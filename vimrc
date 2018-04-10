syntax on

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

call plug#begin('~/.vim/plugged')
Plug 'editorconfig/editorconfig-vim'
Plug 'flazz/vim-colorschemes'
Plug 'kien/ctrlp.vim'
Plug 'mattn/emmet-vim'
Plug 'raimondi/delimitmate'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" Plug 'terryma/vim-multiple-cursors'
" Plug 'valloric/youcompleteme'
call plug#end()

colorscheme gruvbox
set background=dark

:map <C-b> :NERDTreeToggle
:map <C-l> :Emmet

