return {
  "stevearc/oil.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {
    view_options = {
      show_hidden = false,
      is_always_hidden = function(name, bufnr)
        return name == ".." or name == ".git"
      end,
    },
  },
  config = function(_, opts)
    require("oil").setup({ opts })
    vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
  end,
}
