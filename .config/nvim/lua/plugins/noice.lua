return {
  "folke/noice.nvim",
  opts = function(_, opts)
    opts.routes = opts.routes or {}
    table.insert(opts.routes, {
      filter = {
        event = "lsp",
        kind = "progress",
        find = "jdtls",
      },
      opts = { skip = true },
    })
    return opts
  end,
}
