-- Помогает использовать C-hjkl для навигации внутри и снаружи VIM

return {
  'alexghergh/nvim-tmux-navigation',
  config = function()
    require('nvim-tmux-navigation').setup {
      disable_when_zoomed = true, -- не использовать плагин в Zoom режиме TMUX
    }
  end,
}
