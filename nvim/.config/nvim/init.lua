require("sortbito.config.options")
require("sortbito.config.lazy")

local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup
local sortbitoGroup = augroup("sortbito", {})

autocmd("LspAttach", {
  group = sortbitoGroup,
  callback = function(e)
    local opts = { buffer = e.buf }
    vim.keymap.set("n", "gd", function()
      vim.lsp.buf.definition()
    end, opts)
    vim.keymap.set("n", "H", function()
      vim.lsp.buf.hover()
    end, opts)
    vim.keymap.set("n", "rn", function()
      vim.lsp.buf.rename()
    end, opts)
  end,
})
