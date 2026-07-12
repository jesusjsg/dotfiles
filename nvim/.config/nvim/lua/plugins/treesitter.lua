return {
  "nvim-treesitter/nvim-treesitter",
  branch = "main",
  build = ":TSUpdate",
  lazy = false,
  dependencies = { "windwp/nvim-autopairs", event = "InsertEnter", config = true },
  config = function()
    local treesitter = require("nvim-treesitter")
    treesitter.install({
      "python",
      "bash",
      "go",
      "lua",
      "markdown",
      "javascript",
      "typescript",
      "json",
      "vim",
      "dockerfile",
      "docker-compose",
      "yaml",
      "tsx",
      "html",
      "css",
    })
  end,
}
