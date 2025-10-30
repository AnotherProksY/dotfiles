-- Goose
-- LLM

return {
  "azorng/goose.nvim",
  config = function()
    require("goose").setup {}
  end,
  dependencies = {
    "nvim-lua/plenary.nvim",
    {
      "MeanderingProgrammer/render-markdown.nvim",
      opts = {
        anti_conceal = { enabled = false },
        prefered_picker = "telescope",
        providers = {
          openrouter = {
            "anthropic/claude-sonnet-4.5",
          },
        },
      },
    },
  },
}
