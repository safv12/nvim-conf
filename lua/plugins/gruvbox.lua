return {
  'sainnhe/gruvbox-material',
  lazy = false,
  priority = 1000,
  config = function()
    vim.g.gruvbox_material_background = 'hard'
    vim.g.gruvbox_material_foreground = 'mix'
    vim.g.gruvbox_material_enable_italic = true
    vim.g.gruvbox_material_enable_bold = true
    vim.g.gruvbox_material_ui_contrast = 'high'
    vim.g.gruvbox_material_float_style = 'dim'
    vim.g.gruvbox_material_diagnostic_virtual_text = 'colored'
    vim.g.gruvbox_material_current_word = 'high contrast background'
    vim.g.gruvbox_material_inlay_hints_background = 'dimmed'
    vim.g.gruvbox_material_dim_inactive_windows = true
    vim.g.gruvbox_material_menu_selection_background = 'green'
    vim.g.gruvbox_material_better_performance = true
    vim.cmd.colorscheme('gruvbox-material')
  end
}
-- return {
--   'rebelot/kanagawa.nvim',
--   lazy = false,
--   priority = 1000,
--   config = function()
--     require('kanagawa').setup({
--       compile = true,
--       undercurl = true,
--       dimInactive = true,
--       overrides = function(colors)
--         local theme = colors.theme
--         return {
--           -- Transparent floating windows
--           NormalFloat = { bg = 'none' },
--           FloatBorder = { bg = 'none' },
--           FloatTitle = { bg = 'none' },
--           -- Telescope block-like UI
--           TelescopeTitle = { fg = theme.ui.special, bold = true },
--           TelescopePromptNormal = { bg = theme.ui.bg_p1 },
--           TelescopePromptBorder = { fg = theme.ui.bg_p1, bg = theme.ui.bg_p1 },
--           TelescopeResultsNormal = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m1 },
--           TelescopeResultsBorder = { fg = theme.ui.bg_m1, bg = theme.ui.bg_m1 },
--           TelescopePreviewNormal = { bg = theme.ui.bg_dim },
--           TelescopePreviewBorder = { bg = theme.ui.bg_dim, fg = theme.ui.bg_dim },
--         }
--       end,
--     })
--     vim.cmd.colorscheme('kanagawa-wave') -- wave, dragon, lotus
--   end
-- }
