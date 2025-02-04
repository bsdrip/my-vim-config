syntax on
set re=0
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set smarttab
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
"set colorcolumn=80
set signcolumn=yes
set cmdheight=2
set updatetime=50
set laststatus=2
set foldmethod=indent
set nocompatible              " be iMproved, required
set list listchars=tab:>\ ,trail:-,eol:$
filetype on                  " required
au FileType c,h,cc,cpp,hpp setlocal tabstop=2 softtabstop=2 shiftwidth=2

set rtp+=~/.vim/autoload/plug.vim
call plug#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
"Plug 'dikiaap/minimalist'

Plug 'sheerun/vim-polyglot'

Plug 'itchyny/lightline.vim'

Plug 'cburj/vim-plugin-syntax'

Plug 'dense-analysis/ale'

Plug 'darfink/vim-plist'

Plug 'wellle/context.vim'

Plug 'github/copilot.vim'
" All of your Plugins must be added before the following line
call plug#end()            " required
filetype plugin indent on    " required

"if exists('+termguicolors')
"    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
"    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
"    set termguicolors
"endif

"if !has('gui_running') && &term =~ '\%(screen\|tmux\)'
"  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
"  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
"endif
"set termguicolors

let g:ale_linters = {
            \'python': ['flake8', 'bandit'],
            \'javascript': ['eslint'],
            \} " flake8, bandit
let g:ale_virtualtext_cursor = 'disabled'

set background=dark

"set t_Co=256
"colorscheme minimalist

set path+=** "

let g:copilot_enabled = v:false
