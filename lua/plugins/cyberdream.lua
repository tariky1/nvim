-- lua/plugins/cyberdream.lua
return {
  -- Add cyberdream theme
  {
    "scottmckendry/cyberdream.nvim",
    name = "cyberdream",
    priority = 1000,
    opts = {
      transparent = false,
      italic_comments = true,
      hide_fillchars = false,
      borderless_telescope = true,
      terminal_colors = true,
    },
  },
}
