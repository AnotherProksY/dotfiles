-- LazyGit
-- https://github.com/kdheepak/lazygit.nvim

return {
  'kdheepak/lazygit.nvim',
  lazy = true,
  name = 'lazygit',
  cmd = {
    'LazyGit',
    'LazyGitConfig',
    'LazyGitCurrentFile',
    'LazyGitFilter',
    'LazyGitFilterCurrentFile',
  },
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-telescope/telescope.nvim',
  },
  -- order to load the plugin when the command is run for the first time
  keys = {
    { '<leader>lg', '<cmd>LazyGit<cr>', desc = 'LazyGit' },
  },
  init = function()
    require('telescope').load_extension 'lazygit'
    vim.g.lazygit_floating_window_use_plenary = 1
  end,
}
