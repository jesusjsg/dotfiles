return {
  "nvim-treesitter/nvim-treesitter",
  lazy = false,
  build = ":TSUpdate",
  branch = "main",
  dependencies = { "windwp/nvim-autopairs", event = "InsertEnter", config = true },
  config = function()
    require("nvim-treesitter.configs").setup({
      auto_install = true,
      modules = {},
      sync_install = false,
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
      ignore_install = {},
      highlight = {
        enable = true,
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
