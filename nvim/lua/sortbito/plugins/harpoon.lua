return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local harpoon = require("harpoon")
    local keymap = vim.keymap.set
    harpoon:setup()

    keymap("n", "<leader>rr", function()
      harpoon:list():add()
    end)
    keymap("n", "<C-e>", function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end)
    keymap("n", "<C-h>", function()
      harpoon:list():select(1)
    end)
    keymap("n", "<C-j>", function()
      harpoon:list():select(2)
    end)
    keymap("n", "<C-k>", function()
      harpoon:list():select(3)
    end)
    keymap("n", "<C-l>", function()
      harpoon:list():select(4)
    end)
    keymap("n", "<C-u>", function()
      harpoon:list():select(5)
    end)
  end,
}
