return require('packer').startup(function()
  use 'wbthomason/packer.nvim'

  use 'morhetz/gruvbox'

  use 'preservim/nerdtree'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  -- LSP and autocompletion
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
  use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
  use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
  use 'L3MON4D3/LuaSnip' -- Snippets plugin

  -- Clojure plugins
  use 'Olical/aniseed'
  use 'bakpakin/fennel.vim'
  use 'Olical/conjure'
  use 'gberenfield/cljfold.vim'
  use 'm00qek/baleia.nvim'
  use 'luochen1990/rainbow'
  use 'tpope/vim-sexp-mappings-for-regular-people'
  use 'guns/vim-sexp'

  use 'dart-lang/dart-vim-plugin'
  use 'tpope/vim-fugitive'
  use 'airblade/vim-gitgutter'
  use 'stephpy/vim-yaml'
  use 'tpope/vim-commentary'
  use 'tpope/vim-surround'
  use 'mhinz/vim-sayonara'
  use 'junegunn/vim-easy-align'
end)

