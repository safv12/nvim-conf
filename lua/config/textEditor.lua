-- leader
vim.g.mapleader = " "
vim.g.maplocalleader = ","

-- backup
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.swapfile = false

vim.opt.wrap = false

vim.opt.colorcolumn = "80,120"
vim.opt.cursorcolumn = false -- no highlight current column
vim.opt.cursorline = true

vim.opt.scrolloff = 3 -- start scrolling 3 lines before
vim.opt.hlsearch = false -- no highlight search coincidences

vim.opt.nu = true -- line numbers
vim.opt.relativenumber = true -- set relative numbers
vim.opt.signcolumn = "yes" -- always show signcolumns

-- hidden chars
vim.opt.listchars = "eol:$,tab:>-,trail:~,extends:>,precedes:<"
vim.opt.list = true

vim.opt.cmdheight = 2 -- better for messages
vim.opt.updatetime = 300 -- smaller updatetime for CursorHold
-- vim.opt.shortmess = vim.opt.shortmess .. "c" -- don't give ins-completion-menu messages

-- Splits
vim.opt.splitright = true
vim.opt.splitbelow = true

-- clipboard
vim.api.nvim_set_keymap("v", "<leader>f", '"+y', {noremap = true})

-- rainbow
vim.g.rainbow_active = 1

-- Sayonara
vim.api.nvim_set_keymap("n", "<leader>q", ":Sayonara!<CR>", {noremap = true})
