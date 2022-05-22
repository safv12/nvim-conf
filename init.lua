require('plugins')

vim.cmd "colorscheme gruvbox"
vim.opt.background = "dark"
vim.opt.termguicolors = true

require('config/textEditor')
require('config/navigation')
require('config/lsp')

require('config/clojure')
