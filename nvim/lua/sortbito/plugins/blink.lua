return {
  {
    "saghen/blink.cmp",
    version = "1.*",
    dependencies = {
      "rafamadriz/friendly-snippets",
      "folke/lazydev.nvim",
    },

    opts = {
      keymap = { preset = "enter" },

      appearance = {
        use_nvim_cmp_as_default = true,
        nerd_font_variant = "mono",
      },

      completion = {
        accept = {
          auto_brackets = {
            enabled = true,
          },
        },
      },

      sources = {
        default = { "lazydev", "lsp", "path", "snippets", "buffer" },
        providers = {
          lazydev = {
            name = "LazyDev",
            module = "lazydev.integrations.blink",
            score_offset = 100,
          },
        },
      },
    },
    config = function(_, opts)
      require("blink.cmp").setup(opts)

      if vim.lsp.config then
        vim.lsp.config("*", {
          capabilities = require("blink.cmp").get_lsp_capabilities(),
        })
      end
    end,
  },
}
