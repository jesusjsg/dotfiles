require("config.options")
require("config.diagnostics")
require("config.lazy")
require("config.keymaps")
require("vim._core.ui2").enable()

vim.cmd("packadd nvim.undotree")
