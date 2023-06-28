require'nvim-treesitter.configs'.setup {
  ensure_installed = { "clojure", "lua", "graphql" },
  sync_install = false,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}

vim.opt.foldmethod = "manual"
