vim.g.mapleader = " "
vim.g.maplocalleader = ","

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins", {})

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
