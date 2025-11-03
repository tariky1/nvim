-- lua/plugins/everforest.lua
return {
  -- Add everforest theme
  {
    "sainnhe/everforest",
    name = "everforest",
    priority = 1000,
    config = function()
      -- Set everforest options before loading
      -- Available: 'hard', 'medium', 'soft'
      vim.g.everforest_background = "medium"
      -- Enable italic for comments and keywords
      vim.g.everforest_enable_italic = 1
      -- Better performance
      vim.g.everforest_better_performance = 1
    end,
  },
}
