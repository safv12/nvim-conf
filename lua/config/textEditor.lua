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

-- render hidden chars
vim.opt.listchars = "eol:$,tab:>-,trail:~,extends:>,precedes:<"
vim.opt.list = true

vim.opt.cmdheight = 2 -- better for messages
vim.opt.updatetime = 300 -- smaller updatetime for CursorHold

-- Splits
vim.opt.splitright = true
vim.opt.splitbelow = true

-- rainbow
vim.g.rainbow_active = 1

-- Text editor mappings
vim.keymap.set("v", "<leader>y", '"+y', {noremap = true}) -- Copy to clipboard
