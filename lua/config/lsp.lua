require'lspconfig'.clojure_lsp.setup{}

local opts = { noremap = true, silent = true }
vim.api.nvim_set_keymap('n', '<leader>e', '<cmd>lua vim.diagnostic.open_float()<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>ep', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>en', '<cmd>lua vim.diagnostic.goto_next()<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>el', '<cmd>lua vim.diagnostic.setloclist()<CR>', opts)

local on_attach = function(client, bufnr)
  -- Enable completion triggered by <c-x><c-o>
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  -- See `:help vim.lsp.*` for documentation on any of the below functions
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>ac', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>fb', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)
end

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

local servers = { 'clojure_lsp' }
for _, lsp in pairs(servers) do
  require('lspconfig')[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities
  }
end

-- luasnip setup
local luasnip = require 'luasnip'

-- nvim-cmp setup
local cmp = require 'cmp'
cmp.setup {
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<CR>'] = cmp.mapping.confirm {
      behavior = cmp.ConfirmBehavior.Replace,
      select = true,
    },
    ['<Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump()
      else
        fallback()
      end
    end, { 'i', 's' }),
    ['<S-Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      elseif luasnip.jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end, { 'i', 's' }),
  }),
  sources = {
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
  },
}

-- "nmap <silent> gr <Plug>(coc-references)

-- "" Use K to show documentation in preview window.
-- "nnoremap <silent> K :call <SID>show_documentation()<CR>

-- "function! s:show_documentation()
-- "  if (index(['vim','help'], &filetype) >= 0)
-- "    execute 'h '.expand('<cword>')
-- "  else
-- "    call CocAction('doHover')
-- "  endif
-- "endfunction

-- "" Highlight the symbol and its references when holding the cursor.
-- "autocmd CursorHold * silent call CocActionAsync('highlight')

-- "" Symbol renaming.
-- "nmap <leader>rn <Plug>(coc-rename)
-- "nmap <leader>rr <Plug>(coc-refactor)

-- "" Applying codeAction to the selected region.
-- "" Example: `<leader>aap` for current paragraph, `<leader>aw` for a word
-- "" Remap for do codeAction of selected region
-- "function! s:cocActionsOpenFromSelected(type) abort
-- "  execute 'CocCommand actions.open ' . a:type
-- "endfunction
-- "xmap <silent> <leader>a :<C-u>execute 'CocCommand actions.open ' . visualmode()<CR>
-- "nmap <silent> <leader>a :<C-u>set operatorfunc=<SID>cocActionsOpenFromSelected<CR>g@


-- "" Remap keys for applying codeAction to the current buffer.
-- "nmap <leader>ac  <Plug>(coc-codeaction)

-- "" Apply AutoFix to problem on the current line.
-- "nmap <leader>ff  <Plug>(coc-fix-current)
-- "" list errors
-- "nnoremap <silent> <leader>el  :<C-u>CocDiagnostics<CR>

-- ""format buffer
-- "nmap <leader>fb  <Plug>(coc-format)
-- "xmap <leader>fb  <Plug>(coc-format)

-- ""format selected
-- "nmap <leader>fs  <Plug>(coc-format-selected)
-- "xmap <leader>fs  <Plug>(coc-format-selected)

-- "" Add `:OR` command for organize imports of the current buffer.
-- "command! -nargs=0 OR   :call CocAction('runCommand', 'editor.action.organizeImport')

-- "nnoremap <silent> <leader>co  :<C-u>CocList outline<CR>

-- "" to navigate with tab
-- "inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
-- "inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

-- "" to confirm with enter
-- "inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>"

-- "" format
-- "command! -nargs=0 Format :call CocAction('format')
