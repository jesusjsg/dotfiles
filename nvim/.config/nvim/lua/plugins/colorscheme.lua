return {
  "catppuccin/nvim",
  lazy = false,
  flavour = "mocha",
  priority = 1000,
  config = function()
    local theme = require("catppuccin")

    theme.setup({
      opts = {
        vim.cmd([[colorscheme catppuccin-mocha]]),
      },
    })
  end,
}
