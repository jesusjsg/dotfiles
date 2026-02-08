return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  -- snacks.Config
  opts = {
    bigfile = { enabled = true },
    indent = { enabled = true },
    input = { enabled = true },
    notifier = { enabled = true },
    quickfile = { enabled = true },
    scroll = { enabled = true },
    statuscolumn = { enabled = true },
    words = { enabled = true },
    lazygit = { enabled = true, win = { width = 0.9, height = 0.9, position = "float" } },
    picker = { enabled = true },
    terminal = {
      enabled = true,
      win = {
        width = 0.7,
        backdrop = false,
        height = 0.7,
        border = "rounded",
        style = "terminal",
        position = "float",
      },
      start_insert = true,
    },
  },
  keys = {
    {
      "<leader>ff",
      function()
        Snacks.picker.files()
      end,
      desc = "Find Files",
    },
    {
      "<leader>fb",
      function()
        Snacks.picker.buffers()
      end,
      desc = "Find buffers",
    },
    {
      "<leader>fg",
      function()
        Snacks.picker.grep()
      end,
      desc = "Find grep",
    },
    {
      "<leader>fr",
      function()
        Snacks.picker.recent()
      end,
      desc = "Recent",
    },
    {
      "<leader>n",
      function()
        Snacks.notifier.show_history()
      end,
      desc = "Notification History",
    },
    {
      "<leader>gg",
      function()
        Snacks.lazygit.open()
      end,
      desc = "Open lazygit",
    },
  },

  -- Toggle terminal in normal and terminal mode
  vim.keymap.set("n", "<C-\\>", function()
    Snacks.terminal.toggle()
  end, { desc = "Toggle win terminal" }),

  vim.keymap.set("t", "<C-\\>", function()
    Snacks.terminal.toggle()
  end, { desc = "Toggle win terminal" }),
}
