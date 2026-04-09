require("config.options")
require("config.diagnostics")
require("config.lazy")
require("config.keymaps")
require("vim._core.ui2").enable()

vim.cmd("packadd nvim.undotree")

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "python", "lua", "bash", "vim", "markdown", "markdown_inline", "dockerfile", "yaml" },
  callback = function()
    vim.treesitter.start()
  end,
})

-- vim.api.nvim_create_autocmd("FileType", {
--   callback = function()
--     vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
--     vim.opt.foldmethod = "expr"
--   end,
-- })
--
-- vim.api.nvim_create_autocmd({ "BufReadPost", "FileReadPost" }, {
--   pattern = "*",
--   callback = function()
--     vim.cmd("normal! zR")
--   end,
-- })
