return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    local theme = require("tokyonight")

    theme.setup({
      opts = {
        vim.cmd([[colorscheme tokyonight-night]]),
      },
    })
  end,
}
