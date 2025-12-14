-- lua/plugins/rose-pine.lua
return {
  -- Add rose-pine theme
  {
    "rose-pine/neovim",
    name = "rose-pine",
    priority = 1000,
    opts = {
      variant = "moon", -- auto, main, moon, or dawn
      dark_variant = "moon", -- main, moon, or dawn
    },
  },
}
