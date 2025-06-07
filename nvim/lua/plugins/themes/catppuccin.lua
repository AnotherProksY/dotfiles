-- Catppuccin

return {
  'catppuccin/nvim',
  name = 'catppuccin',
  priority = 1000,
  init = function()
    require('catppuccin').setup {
      flavour = 'frappe',
      background = {
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
          indentscope_color = 'frappe',
        },
        telescope = {
          enabled = true,
          style = 'nvchad',
        },
      },
      transparent_background = true,
      highlight_overrides = {
        frappe = function(frappe)
          return {
            LineNr = { fg = frappe.subtext0 },
            WinSeparator = { fg = frappe.overlay0 },
            NeoTreeWinSeparator = { fg = frappe.overlay0 },
          }
        end,
      },
    }
    vim.cmd.colorscheme 'catppuccin-frappe'
    vim.opt.fillchars = { eob = ' ' }
  end,
}
