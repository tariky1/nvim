-- lua/plugins/catppuccin.lua
return {
  -- Add catppuccin theme
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
  },

  -- Configure LazyVim to use catppuccin
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
