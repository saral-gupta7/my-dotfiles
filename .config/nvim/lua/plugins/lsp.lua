return {
  "neovim/nvim-lspconfig",
  config = function()
    local servers = { "ts_ls", "lua_ls", "pyright" }

    for _, server in ipairs(servers) do
      vim.lsp.enable(server)
    end
  end,
}
