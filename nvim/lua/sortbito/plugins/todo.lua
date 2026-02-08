return {
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim", "ibhagwan/fzf-lua" },
    opts = {
      merge_keywords = true,
      highlight = {
        multiline = true,
        multiline_context = 5,
        before = "fg",
        keyword = "bg",
        after = "fg",
        comments_only = true,
      },
    },
    config = function(_, opts)
      local todo = require("todo-comments")
      todo.setup(opts)
      vim.keymap.set("n", "]t", function()
        todo.jump_next()
      end, { desc = "Next todo comment" })

      vim.keymap.set("n", "[t", function()
        todo.jump_prev()
      end, { desc = "Previous todo comment" })

      vim.keymap.set("n", "<leader>td", "<cmd>TodoFzfLua<CR>", { desc = "Find todo comments" })
    end,
  },
}
