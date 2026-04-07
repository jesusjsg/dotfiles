return {
  "neovim/nvim-lspconfig",
  dependencies = {
    {
      "folke/lazydev.nvim",
      ft = "lua",
      opts = {
        library = {
          { path = "luvit-meta/library", words = { "vim%.uv" } },
          { path = "/usr/share/awesome/lib/", words = { "awesome" } },
        },
      },
    },
    { "Bilal2453/luvit-meta", lazy = true },
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "WhoIsSethDaniel/mason-tool-installer.nvim",
  },
  config = function()
    vim.lsp.config("*", {
      capabilities = require("blink-cmp").get_lsp_capabilities(),
    })
  end,
}
