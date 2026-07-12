require("config.options")
require("config.diagnostics")
require("config.lazy")
require("config.keymaps")
require("vim._core.ui2").enable()

vim.cmd("packadd nvim.undotree")

vim.api.nvim_create_autocmd("FileType", {
  pattern = {
    "python",
    "lua",
    "bash",
    "vim",
    "markdown",
    "markdown_inline",
    "dockerfile",
    "yaml",
    "go",
    "typescript",
    "javascript",
    "javascriptreact",
    "tsx",
    "json",
  },
  callback = function()
    vim.treesitter.start()
  end,
})
vim.treesitter.language.register("tsx", "typescriptreact")
