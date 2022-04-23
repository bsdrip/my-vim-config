syntax on
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set exrc
set relativenumber
set number
set hidden
set noerrorbells
set nowrap
set noswapfile
set nobackup
set undofile
set incsearch
set scrolloff=8
set completeopt=menuone,noinsert,noselect
set colorcolumn=80
set signcolumn=yes
set cmdheight=2
set updatetime=50
set laststatus=2
set foldmethod=indent
set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'sheerun/vim-polyglot'

Plugin 'pineapplegiant/spaceduck', { 'branch': 'main' }

Plugin 'itchyny/lightline.vim'

Plugin 'cburj/vim-plugin-syntax'

Plugin 'dense-analysis/ale'

Plugin 'octol/vim-cpp-enhanced-highlight'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

if exists('+termguicolors')
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    set termguicolors
endif

let g:ale_linters = { 
            \'python': ['flake8'], 
            \}
" let g:ale_fixers = {'*': [], 'python': []}

let g:lightline = {
    \ 'colorscheme': 'spaceduck',
    \ }

colorscheme spaceduck
