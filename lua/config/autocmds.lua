-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- Custom command to save colorscheme choice permanently
vim.api.nvim_create_user_command("ColorSchemeSave", function(opts)
  local colorscheme = opts.args

  -- Apply the colorscheme
  vim.cmd.colorscheme(colorscheme)

  -- Path to your config file
  local config_path = vim.fn.stdpath("config") .. "/lua/plugins/colorscheme.lua"

  -- Content to write
  local content = string.format(
    [[-- lua/plugins/colorscheme.lua
return {
  -- Configure LazyVim default colorscheme
  {
    "LazyVim/LazyVim",
    opts = {
      -- Set your default colorscheme here
      -- Available options: "rose-pine", "melange", "cyberdream", "everforest", "nordic"
      colorscheme = "%s",
    },
  },
}
]],
    colorscheme
  )

  -- Write to file
  local file = io.open(config_path, "w")
  if file then
    file:write(content)
    file:close()
    vim.notify("Colorscheme saved: " .. colorscheme, vim.log.levels.INFO)
  else
    vim.notify("Failed to save colorscheme", vim.log.levels.ERROR)
  end
end, { nargs = 1, complete = "color" })
