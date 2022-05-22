-- NERDTree
vim.api.nvim_set_keymap("n", "<C-n>", ":NERDTreeToggle<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<localleader>f", ":NERDTreeFind<CR>", {noremap = true})

-- Telescope
local telescopeMapOpts = { noremap = true, silent = true }
vim.api.nvim_set_keymap("n", "<C-p>", "<cmd>Telescope find_files<CR>", telescopeMapOpts)
vim.api.nvim_set_keymap("n", "<C-g>", "<cmd>Telescope live_grep<CR>", telescopeMapOpts)
vim.api.nvim_set_keymap("n", "<C-b>", "<cmd>Telescope buffers<CR>", telescopeMapOpts)
