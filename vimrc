" Enable syntax
syntax on

" Set indentation
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set nu

" List of plugins
call plug#begin('~/.vim/plugged')
  Plug 'editorconfig/editorconfig-vim'
  Plug 'flazz/vim-colorschemes'
  Plug 'kien/ctrlp.vim'
  Plug 'mattn/emmet-vim'
  Plug 'raimondi/delimitmate'
  Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
  Plug 'terryma/vim-multiple-cursors'
  Plug 'tpope/vim-surround'
  Plug 'valloric/matchtagalways'
  Plug 'preservim/nerdcommenter'
  " Plug 'valloric/youcompleteme'
call plug#end()

" Color scheme
colorscheme gruvbox
"colorscheme meta5
"set background=dark

" Set prefix for Emmet plugin
:nmap <C-l> :Emmet

" NERDTree Settings
:nmap <C-b> :NERDTreeToggle<CR>
:let g:NERDTreeWinSize=20
:let NERDTreeMouseMode=2

:nmap <C-\> :set wrap!<CR>

augroup MouseInNERDTreeOnly
    autocmd!
    autocmd BufEnter NERD_tree_* set mouse=a
    autocmd BufLeave NERD_tree_* set mouse=
augroup END

set mouse=
