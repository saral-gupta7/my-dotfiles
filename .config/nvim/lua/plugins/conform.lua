return {
  "stevearc/conform.nvim",
  event = { "BufReadPre", "BufNewFile" },
  opts = {
    formatters_by_ft = {
      javascript = { "prettier" },
      javascriptreact = { "prettier" },
      typescript = { "prettier" },
      typescriptreact = { "prettier" },
      css = { "prettier" },
      html = { "prettier" },
      json = { "prettier" },
      markdown = { "prettier" },

      python = { "ruff_format" },

      lua = { "stylua" },

      go = { "gofmt" }, -- simplest
      goimports = { "goimports" }, -- import aware

      rust = { "rustfmt" },

      c = { "clang_format" },
      cpp = { "clang_format" },
      objc = { "clang_format" },

      sh = { "shfmt" },
    },
  },
}
