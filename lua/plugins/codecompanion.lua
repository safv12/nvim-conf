return {
  "olimorris/codecompanion.nvim",
  opts = {},
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
  keys = {
    {"<localleader>aa", "<cmd>CodeCompanionChat<CR>", noremap = true},
    {"<localleader>aa", "<cmd>'<,'>CodeCompanionChat<CR>", mode = "v"},
  },
  config = function ()
    local codecompanion = require("codecompanion")

    codecompanion.setup({
      adapters = {
        copilot = function()
          return require("codecompanion.adapters").extend("copilot", {
            schema = {
              model = {
                default = "claude-3.7-sonnet",
              },
            },
          })
        end,
      },
      strategies = {
        chat = {
          adapter = "copilot",
        },
      inline = {
        adapter = "copilot",
      },
      }})
  end,
}
