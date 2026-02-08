return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPre", "BufNewFile" },
  cmd = { "TSUpdate", "TSInstall", "TSLog", "TSUninstall" },
  dependencies = { "windwp/nvim-autopairs", event = "InsertEnter", config = true },
  config = function()
    local treesitter = require("nvim-treesitter")

    treesitter.setup({
      highlight = { enable = true },
      indent = { enable = true },
      ensure_installed = {
        "json",
        "javascript",
        "typescript",
        "yaml",
        "markdown",
        "markdown_inline",
        "bash",
        "lua",
        "vim",
        "dockerfile",
        "gitignore",
        "query",
        "python",
        "regex",
        "toml",
        "jsonc",
      },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-space>",
          node_incremental = "<C-space>",
          scope_incremental = false,
          node_decremental = "<bs>",
        },
      },
    })
  end,
}
