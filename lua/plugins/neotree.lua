return{
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    },
  keys = {
    { "<C-n>", "<cmd>Neotree filesystem toggle<CR>", desc = "Explorer NeoTree (root dir)", remap = true },
    { "<localleader>gst", "<cmd>Neotree git_status<CR>", desc = "Explorer NeoTree (root dir)", remap = true },
  }
}
