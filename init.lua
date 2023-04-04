require('plugins')

vim.cmd("colorscheme gruvbox")
vim.opt.background = "dark"
vim.opt.termguicolors = true

require("mason").setup()
require("mason-lspconfig").setup()

require("lspconfig").rust_analyzer.setup {}
require("lspconfig").clojure_lsp.setup {}
require("lspconfig").lua_ls.setup {}

require('config/textEditor')
require('config/navigation')
require('config/lsp')
require('config/treesitter')
require('config/rust')
require('config/clojure')
