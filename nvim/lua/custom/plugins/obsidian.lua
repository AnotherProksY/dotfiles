-- Obsidian
-- https://github.com/epwalsh/obsidian.nvim

return {
  'epwalsh/obsidian.nvim',
  lazy = true,
  ft = 'markdown',
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  config = function()
    require('obsidian').setup {
      workspaces = {
        {
          name = 'Second Brain',
          path = '/Users/k.fazilov/Library/Mobile Documents/iCloud~md~obsidian/Documents/Second Brain',
        },
      },

      new_notes_location = 'current_dir',

      mappings = {
        -- Overrides the 'gf' mapping to work on markdown/wiki links within your vault.
        ['gf'] = {
          action = function()
            return require('obsidian').util.gf_passthrough()
          end,
          opts = { noremap = false, expr = true, buffer = true },
        },
        -- Smart action depending on context, either follow link or toggle checkbox.
        ['<cr>'] = {
          action = function()
            return require('obsidian').util.smart_action()
          end,
          opts = { buffer = true, expr = true },
        },
      },

      completion = {
        nvim_cmp = true,
        min_chars = 2,
      },

      templates = {
        folder = 'Templates',
        date_format = '%YYYY-%MM-%DD',
        time_format = '%HH:%mm:%ss',
      },

      attachments = {
        img_folder = 'attachments',
      },

      use_advanced_uri = true,

      sort_by = 'modified',
      sort_reversed = true,

      ui = {
        enable = false,
      },
    }
  end,
}
