-- Requirements
-- Install 'BurntSushi/ripgrep' for live_grep

return {
  {
    'nvim-telescope/telescope.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function ()
        require("telescope")

        local opts = { noremap = true, silent = true }
        vim.keymap.set("n", "<C-p>", "<cmd>Telescope find_files<CR>", opts)
        vim.keymap.set("n", "<C-g>", "<cmd>Telescope live_grep<CR>", opts)
        vim.keymap.set("n", "<C-b>", "<cmd>Telescope buffers<CR>", opts)
    end
  },
  {
    'nvim-telescope/telescope-fzf-native.nvim',
    build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build'
  },
}
