-- lua/plugins/telescope.lua
return {
  "nvim-telescope/telescope.nvim",
  opts = {
    defaults = {
      -- Show gitignored files in searches
      file_ignore_patterns = {},
      vimgrep_arguments = {
        "rg",
        "--color=never",
        "--no-heading",
        "--with-filename",
        "--line-number",
        "--column",
        "--smart-case",
        "--no-ignore", -- don't ignore files from .gitignore
        "--hidden", -- show hidden files
      },
    },
    pickers = {
      find_files = {
        -- fd is used by default, pass args to show hidden and ignored
        find_command = { "rg", "--files", "--hidden", "--no-ignore" },
      },
    },
  },
}
