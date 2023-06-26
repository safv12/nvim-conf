-- Conjure
vim.keymap.set("n", "<localleader>tt", ":ConjureCljRunCurrentTest<CR>", {})
vim.keymap.set("n", "<localleader>tn", ":ConjureCljCurrentNsTests<CR>", {})
vim.keymap.set("n", "<localleader>ta", ":ConjureCljRunAllTests<CR>", {})
vim.keymap.set("n", "<leader>f", ":fold<CR>", {})

vim.g['conjure#client#clojure#nrepl#test#current_form_names'] = {
  'deftest',
  'defflow',
  'defflow-new-system!',
  'defflow-i18n',
  'defspec',
  'defflow-i18n-without-loopback',
  'defflow-without-fn-validation'}

-- Sexp
vim.g.sexp_filetypes = 'lisp,scheme,clojure,fennel' -- it adds fennel

-- EasyAlign
local easyOpts = { noremap = true }

-- vi{ga<SPACE><CR>
vim.keymap.set("n", "ga", "<Plug>(EasyAlign)", {})
vim.keymap.set("x", "ga", "<Plug>(EasyAlign)", {})

vim.g['conjure#log#strip_ansi_escape_sequences_line_limit'] = 0
local result = vim.api.nvim_exec(
  [[
    let s:baleia = luaeval("require('baleia').setup { line_starts_at = 3 }")
    autocmd BufWinEnter conjure-log-* call s:baleia.automatically(bufnr('%'))
  ]],
  true)
