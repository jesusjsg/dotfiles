return {
  "mason-org/mason-lspconfig.nvim",
  opts = {
    ensure_installed = { "lua_ls", "ty", "ruff", "tombi", "biome", "marksman", "stylua" },
  },
  dependencies = {
    { "mason-org/mason.nvim", opts = true },
    "neovim/nvim-lspconfig",
  },
  config = function(_, opts)
    require("mason").setup()
    require("mason-lspconfig").setup(opts)

    vim.diagnostic.config({
      virtual_text = true,
      signs = true,
      underline = true,
      update_in_insert = false,
      severity_sort = true,
      float = {
        focusable = false,
        border = "rounded",
        source = "always",
      },
    })

    vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show diagnostic" })
    vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Prev diagnostic" })
    vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Next diagnostic" })
    vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Diagnostic list" }) -- In some times this keymap is slow
  end,
}
