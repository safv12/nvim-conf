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

-- fold
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"

require('config/textEditor')
require('config/lsp')
require('config/clojure')

-- Workaround to avoid LSP repalcing Treesitter color highlight
-- See: https://github.com/NvChad/NvChad/issues/1907#issuecomment-1501275281
vim.highlight.priorities.semantic_tokens = 95

require'lualine'.setup {
  options = {
    theme = 'gruvbox-material'
  }
}
