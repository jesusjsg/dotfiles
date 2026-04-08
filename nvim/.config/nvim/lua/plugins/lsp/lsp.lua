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
    vim.keymap.set("n", "gd", function()
      vim.lsp.buf.definition()
    end)
    vim.keymap.set("n", "H", function()
      vim.lsp.buf.hover()
    end)
    vim.keymap.set("n", "rn", function()
      vim.lsp.buf.rename()
    end)
  end,
}
