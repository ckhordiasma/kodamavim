" My personal vim settings
set smartindent
set autoindent
set tabstop=4
set softtabstop=4
set expandtab
set nocompatible
" makes fonts look much nicer (not needed now that I'm using color schemes i
" guess though)
set bg=dark

call plug#begin('~/.vim/plugged')

" For file tree viewing
Plug 'scrooloose/nerdtree'
" For vim text highlighting
Plug 'sheerun/vim-polyglot'
" For inserting automatic pairs of brackets
Plug 'jiangmiao/auto-pairs'
" For a status bar at bottom of screen
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" intellisense and autocompletion
Plug 'neoclide/coc.nvim', {'branch':'release'}
" VS code-like color scheme
Plug 'tomasiser/vim-code-dark'
call plug#end()

" Some plugin-specific settings: 
colorscheme codedark
map <C-b> :NERDTreeToggle<CR>

" for COC autocompletion
set hidden
set nobackup
set nowritebackup
set cmdheight=2
set updatetime=300
set shortmess+=c
set signcolumn=no
set number
" to make <cr> work more often
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>"
