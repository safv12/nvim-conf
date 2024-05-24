return {
  "tpope/vim-fugitive",
  lazy = false,
  keys = {
      { "<Leader>gh", "<cmd>GBrowse!<CR>" },
      { "<Leader>gh", "<cmd>'<,'>GBrowse<cr>", mode = "v" },
    },
  dependencies = { "tpope/vim-rhubarb" },
}
