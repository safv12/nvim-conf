return {
  'neovim/nvim-lspconfig',
  {
    "williamboman/mason.nvim",
    build = ":MasonUpdate"
  },
  "williamboman/mason-lspconfig.nvim",
  'hrsh7th/nvim-cmp', -- Autocompletion plugin
  'hrsh7th/cmp-nvim-lsp', -- LSP source for nvim-cmp
  'saadparwaiz1/cmp_luasnip', -- Snippets source for nvim-cmp
  'L3MON4D3/LuaSnip', -- Snippets plugin
}
