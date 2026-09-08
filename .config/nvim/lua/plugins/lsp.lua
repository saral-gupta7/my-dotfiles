return {
  "neovim/nvim-lspconfig",
  config = function()
    local lspconfig = require("lspconfig")

    local servers = { "ts_ls", "lua_ls", "pyright", "jsonls", "clangd", "gopls", "jdtls" }

    for _, server in ipairs(servers) do
      lspconfig[server].setup({})
    end

    -- jsonls with schema support
    lspconfig.jsonls.setup({
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
