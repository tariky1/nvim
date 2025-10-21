-- lua/plugins/rose-pine.lua
return {
  -- Add rose-pine theme
  {
    "rose-pine/neovim",
    name = "rose-pine",
    priority = 1000,
    opts = {
      variant = "main", -- auto, main, moon, or dawn
      dark_variant = "main", -- main, moon, or dawn
    },
  },
}
