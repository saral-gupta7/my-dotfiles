return {
  "neovim/nvim-lspconfig",
  config = function()
    local servers = { "ts_ls", "lua_ls", "pyright", "json_lsp" }

    for _, server in ipairs(servers) do
      vim.lsp.enable(server)
    end

    -- Setting up json_lsp for suggestions in tsconfig.json file.
    require("lspconfig").jsonls.setup({
      settings = {
        json = {
          schemas = {
            {
              fileMatch = { "tsconfig.json" },
              url = "https://json.schemastore.org/tsconfig.json",
            },
          },
          validate = { enable = true },
          completion = { enable = true },
        },
      },
    })
  end,
}
