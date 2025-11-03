-- lua/plugins/python.lua
return {
  -- Configure basedpyright LSP for better Python support with uv
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        basedpyright = {
          settings = {
            basedpyright = {
              analysis = {
                -- Use the virtual environment from uv
                autoSearchPaths = true,
                diagnosticMode = "openFilesOnly",
                useLibraryCodeForTypes = true,
                -- More aggressive type checking
                typeCheckingMode = "basic", -- options: "off", "basic", "standard", "strict"
              },
            },
          },
        },
      },
    },
  },
  -- Ensure python is detected properly
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      local lspconfig = require("lspconfig")
      -- Auto-detect .venv in project root
      opts.servers = opts.servers or {}
      opts.servers.basedpyright = vim.tbl_deep_extend("force", opts.servers.basedpyright or {}, {
        before_init = function(_, config)
          -- Set python path to .venv if it exists
          local venv_path = vim.fn.getcwd() .. "/.venv"
          if vim.fn.isdirectory(venv_path) == 1 then
            config.settings.python = config.settings.python or {}
            config.settings.python.pythonPath = venv_path .. "/bin/python"
          end
        end,
      })
      return opts
    end,
  },
}
