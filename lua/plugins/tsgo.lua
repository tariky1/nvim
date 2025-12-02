-- lua/plugins/tsgo.lua
return {
  -- Use LazyVim's LSP layer
  "neovim/nvim-lspconfig",
  opts = function(_, opts)
    local util = require("lspconfig.util")
    local configs = require("lspconfig.configs")

    -- (A) Define tsgo config if not already defined
    if not configs.tsgo then
      configs.tsgo = {
        default_config = {
          cmd = { "tsgo", "lsp", "-stdio" },
          filetypes = {
            "typescript",
            "typescriptreact",
            "typescript.tsx",
            "javascript",
            "javascriptreact",
            "javascript.jsx",
          },
          root_dir = util.root_pattern("tsconfig.json", "jsconfig.json", "package.json", ".git"),
          single_file_support = true,
        },
      }
    end

    -- (B) Disable other TS servers to avoid conflicts
    opts.servers = opts.servers or {}
    opts.servers.tsserver = false
    opts.servers.vtsls = false
    opts.servers.eslint = false
    -- opts.servers["typescript-tools"] = false -- uncomment if you use it

    -- (C) Enable tsgo
    opts.servers.tsgo = {}

    return opts
  end,
}
