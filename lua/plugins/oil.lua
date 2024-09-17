return {
  'stevearc/oil.nvim',
  lazy = false,
  config = function ()
    require("oil").setup()
  end,
  keys = {
    { "-", "<cmd>Oil<cr>", desc = "Open parent directory" },
  }
}
