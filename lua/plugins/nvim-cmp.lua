-- lua/plugins/nvim-cmp.lua (now configured for blink.cmp)
return {
  {
    "saghen/blink.cmp",
    opts = {
      keymap = {
        preset = "default",
        -- Tab to accept completion like VSCode
        ["<Tab>"] = { "select_and_accept", "fallback" },
        -- Shift-Tab to select previous
        ["<S-Tab>"] = { "select_prev", "fallback" },
        -- Keep Ctrl-n/Ctrl-p for navigation
        ["<C-n>"] = { "select_next", "fallback" },
        ["<C-p>"] = { "select_prev", "fallback" },
        -- Keep Ctrl-y as alternative
        ["<C-y>"] = { "select_and_accept" },
      },
    },
  },
}
