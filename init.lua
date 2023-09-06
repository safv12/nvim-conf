vim.g.mapleader = " "
vim.g.maplocalleader = ","

-- Install Lazy
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins", {})

-- Color configuration
vim.opt.background = "dark"
vim.cmd([[colorscheme gruvbox]])
vim.opt.termguicolors = true

-- Mason setup
require("mason").setup()
require("mason-lspconfig").setup()
require("mason-lspconfig").setup_handlers {
    function (server_name)
        require("lspconfig")[server_name].setup {}
    end,
}

require('config/textEditor')
require('config/lsp')
require('config/clojure')

-- Workaround to avoid LSP repalcing Treesitter color highlight
-- See: https://github.com/NvChad/NvChad/issues/1907#issuecomment-1501275281
vim.highlight.priorities.semantic_tokens = 95
