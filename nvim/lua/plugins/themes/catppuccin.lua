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
      transparent_background = true,
      highlight_overrides = {
        frappe = function(frappe)
          return {
            LineNr = { fg = frappe.text },
          }
        end,
      },
    }
    vim.cmd.colorscheme 'catppuccin-frappe'
    vim.opt.fillchars = { eob = ' ' }
  end,
}
