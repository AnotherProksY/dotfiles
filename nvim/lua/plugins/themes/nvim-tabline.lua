return {
  'crispgm/nvim-tabline',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  config = true,
  init = function()
    require('tabline').setup {
      show_icon = true,
      show_index = true,
      modify_indicator = ' 󱗓',
      brackets = { '', '' },
    }
  end,
}
