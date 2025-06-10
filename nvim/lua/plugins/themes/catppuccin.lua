-- Catppuccin

return {
  'catppuccin/nvim',
  name = 'catppuccin',
  priority = 1000,
  init = function()
    require('catppuccin').setup {
      background = {
        light = 'latte',
        dark = 'frappe',
      },
      default_integrations = true,
      integrations = {
        fidget = true,
        mason = true,
        which_key = true,
        gitsigns = {
          enabled = true,
          transparent = true,
        },
        mini = {
          enabled = true,
          -- indentscope_color = 'latte',
        },
        telescope = {
          enabled = true,
          style = 'nvchad',
        },
      },
      transparent_background = true,
    }
    vim.cmd.colorscheme 'catppuccin'
    vim.opt.fillchars = { eob = ' ' }
  end,
}
