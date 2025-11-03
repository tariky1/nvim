-- lua/plugins/snacks.lua
return {
  "folke/snacks.nvim",
  opts = {
    scroll = {
      enabled = false,
    },
    picker = {
      sources = {
        explorer = {
          hidden = true, -- show hidden files like .env
          ignored = true, -- show files ignored by git like node_modules
        },
      },
    },
  },
}
