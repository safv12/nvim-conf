return {
  'stevearc/oil.nvim',
  lazy = false,
  config = function ()
    require("oil").setup({
    view_options = {
      show_hidden = true,
    },
  })
  end,
  keys = {
    { "-", "<cmd>Oil<cr>", desc = "Open parent directory" },
  }
}
