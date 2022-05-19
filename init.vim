""" start of plugin system block
call plug#begin('~/.local/share/nvim/plugged')

" theme
Plug 'morhetz/gruvbox'

" status/tabline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" navigation
Plug 'preservim/nerdtree' " A tree explorer plugin for vim.
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" coc.nvim
Plug 'neoclide/coc.nvim', { 'branch': 'release' }

" clojure
Plug 'Olical/aniseed', { 'for': 'fennel' }
Plug 'bakpakin/fennel.vim', { 'for': 'fennel' }
Plug 'Olical/conjure', {'for': ['clojure' , 'fennel']}
Plug 'gberenfield/cljfold.vim'

" parens everywhere
Plug 'luochen1990/rainbow', { 'for': ['clojure' , 'fennel'] }
Plug 'tpope/vim-sexp-mappings-for-regular-people', { 'for': ['clojure' , 'fennel'] }
Plug 'guns/vim-sexp', { 'for': ['clojure' , 'fennel'] }

" flutter
Plug 'dart-lang/dart-vim-plugin'

" utils
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'stephpy/vim-yaml'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'mhinz/vim-sayonara'
Plug 'junegunn/vim-easy-align'

call plug#end()
""" end of plugin system

let mapleader=" "
let maplocalleader=","

" load config files *.vim
runtime! config/*.vim

" https://neovim.io/doc/user/options.html

nnoremap <Leader>+ :vertical resize +7<CR>
nnoremap <Leader>- :vertical resize -7<CR>
nnoremap <localleader>+ :resize +7<CR>
nnoremap <localLeader>- :resize -7<CR>

" no backup
set nobackup
set nowritebackup
set noswapfile
set nowrap

set colorcolumn=80,120  " chars ruler
set cursorline          " highlight current line
set nocursorcolumn      " no highlight current column
set scrolloff=3         " start scrolling 3 lines before
set nohlsearch          " no highlight search coincidences

set nu                  " line numbers
set relativenumber      " set relative numbers
set signcolumn=yes      " always show signcolumns

" hidden chars
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
set list

" spell checking
autocmd FileType markdown setlocal spell spelllang=en_us
autocmd FileType gitcommit setlocal spell spelllang=en_us

set cmdheight=2         " better for messages
set updatetime=300      " smaller updatetime for CursorHold
set shortmess+=c        " don't give ins-completion-menu messages

" Splits
set splitright
set splitbelow

let g:conjure#log#strip_ansi_escape_sequences_line_limit=0
" autocmd BufEnter conjure-log-* AnsiEsc
