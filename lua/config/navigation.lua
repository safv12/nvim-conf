require("telescope").load_extension('harpoon')

-- Telescope
local opts = { noremap = true, silent = true }
vim.keymap.set("n", "<C-p>", "<cmd>Telescope find_files<CR>", opts)
vim.keymap.set("n", "<C-g>", "<cmd>Telescope live_grep<CR>", opts)
vim.keymap.set("n", "<C-b>", "<cmd>Telescope buffers<CR>", opts)

-- Harpoon
local harpoon_mark = require("harpoon.mark")
local harpoon_ui = require("harpoon.ui")

vim.keymap.set('n', '<leader>ff', '<cmd>Telescope harpoon marks<CR>', opts)

vim.keymap.set("n", "<leader>hh", harpoon_ui.toggle_quick_menu)
vim.keymap.set("n", "<leader>a", harpoon_mark.add_file)
vim.keymap.set("n", "<leader>n", harpoon_ui.nav_next)
vim.keymap.set("n", "<leader>p", harpoon_ui.nav_prev)

vim.keymap.set("n", "<C-h>", function() harpoon_ui.nav_file(1) end)
vim.keymap.set("n", "<C-j>", function() harpoon_ui.nav_file(2) end)
vim.keymap.set("n", "<C-k>", function() harpoon_ui.nav_file(3) end)
vim.keymap.set("n", "<C-l>", function() harpoon_ui.nav_file(4) end)
