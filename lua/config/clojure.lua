-- Conjure
vim.api.nvim_set_keymap("n", "<localleader>tt", ":ConjureCljRunCurrentTest<CR>", {})
vim.api.nvim_set_keymap("n", "<localleader>tn", ":ConjureCljCurrentNsTests<CR>", {})
vim.api.nvim_set_keymap("n", "<localleader>ta", ":ConjureCljRunAllTests<CR>", {})

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
vim.api.nvim_set_keymap("n", "ga", "<Plug>(EasyAlign)", {})
vim.api.nvim_set_keymap("x", "ga", "<Plug>(EasyAlign)", {})

vim.g['conjure#log#strip_ansi_escape_sequences_line_limit'] = 0
local result = vim.api.nvim_exec(
  [[
    let s:baleia = luaeval("require('baleia').setup { line_starts_at = 3 }")
    autocmd BufWinEnter conjure-log-* call s:baleia.automatically(bufnr('%'))
  ]],
  true)
