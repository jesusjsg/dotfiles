return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local harpoon = require("harpoon")
    local keymap = vim.keymap.set
    harpoon:setup()

    keymap("n", "<leader>ha", function()
      harpoon:list():add()
    end)
    keymap("n", "<leader>hl", function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end)
    keymap("n", "<C-u>", function()
      harpoon:list():select(1)
    end)
    keymap("n", "<C-i>", function()
      harpoon:list():select(2)
    end)
    keymap("n", "<C-o>", function()
      harpoon:list():select(3)
    end)
    keymap("n", "<C-p>", function()
      harpoon:list():select(4)
    end)
  end,
}
