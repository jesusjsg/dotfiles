return {
  "nvim-treesitter/nvim-treesitter",
  branch = "master",
  lazy = false,
  build = ":TSUpdate",
  dependencies = { "windwp/nvim-autopairs", event = "InsertEnter", config = true },
  config = function()
    require("nvim-treesitter.configs").setup({
      auto_install = false,
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
      },
      ignore_install = { "tmux" },
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
