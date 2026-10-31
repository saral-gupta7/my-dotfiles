return {
  -- 1. Syntax Highlighting
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      if type(opts.ensure_installed) == "table" then
        table.insert(opts.ensure_installed, "rust")
      end
    end,
  },

  -- 2. Modern Rust LSP Experience
  {
    "mrcjkb/rustaceanvim",
    version = "^5", -- Recommended to lock to a major version
    ft = { "rust" },
    config = function()
      vim.g.rustaceanvim = {
        -- Plugin configuration
        tools = {},
        -- LSP configuration
        server = {
          on_attach = function(client, bufnr)
            -- Keybindings specific to Rust buffers
            local bufopts = { silent = true, buffer = bufnr }
            vim.keymap.set("n", "<leader>ca", function()
              vim.cmd.RustLsp("codeAction")
            end, bufopts)
            vim.keymap.set("n", "K", function()
              vim.cmd.RustLsp("hoverActions")
            end, bufopts)
            vim.keymap.set("n", "<leader>dr", function()
              vim.cmd.RustLsp("debuggables")
            end, bufopts)
          end,
          default_settings = {
            ["rust-analyzer"] = {
              cargo = {
                allFeatures = true,
                loadOutDirsFromCheck = true,
              },
              procMacro = {
                enable = true,
              },
              checkOnSave = true, -- just a boolean now: turns "check on save" on/off
              check = {
                command = "clippy", -- the actual clippy setting moved here
              },
            },
          },
        },
      }
    end,
  },
}
