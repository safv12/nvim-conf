return {
  {
    'ThePrimeagen/harpoon',
    dependencies = {
       'nvim-lua/plenary.nvim'
    },
    keys = {
      {"<leader>hh", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<CR>", remap = true},
      {"<leader>a", "<cmd>lua require('harpoon.mark').add_file()<CR>", remap = true},

      {"<C-h>", "<cmd>lua require('harpoon.ui').nav_file(1) <CR>", remap = true},
      {"<C-j>", "<cmd>lua require('harpoon.ui').nav_file(2) <CR>", remap = true},
      {"<C-k>", "<cmd>lua require('harpoon.ui').nav_file(3) <CR>", remap = true},
      {"<C-l>", "<cmd>lua require('harpoon.ui').nav_file(4) <CR>", remap = true},
    },
  }
}
