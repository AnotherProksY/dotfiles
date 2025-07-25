return {
  'utilyre/barbecue.nvim',
  name = 'barbecue',
  version = '*',
  dependencies = {
    'SmiteshP/nvim-navic',
    'nvim-tree/nvim-web-devicons', -- optional dependency
  },
  config = function()
    require('barbecue').setup {
      create_autocmd = false, -- prevent barbecue from updating itself automatically
      theme = 'catppuccin',
    }

    vim.api.nvim_create_autocmd({
      'WinResized',
      'BufWinEnter',
      'CursorHold',
      'InsertLeave',

      -- include this if you have set `show_modified` to `true`
      'BufModifiedSet',
    }, {
      group = vim.api.nvim_create_augroup('barbecue.updater', {}),
      callback = function()
        require('barbecue.ui').update()
      end,
    })
  end,
}
