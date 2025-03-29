return {
  "hrsh7th/nvim-cmp",
  opts = function(_, opts)
    local cmp = require("cmp")

    opts.mapping = cmp.mapping.preset.insert({
      ["<CR>"] = cmp.mapping.confirm({ select = true }), -- Use Enter to confirm completion
      ["<Tab>"] = cmp.mapping.select_next_item(), -- Tab navigates forward
      ["<S-Tab>"] = cmp.mapping.select_prev_item(), -- Shift+Tab navigates backward
      ["<C-e>"] = cmp.mapping.abort(), -- Ctrl+E to close the menu
    })
  end,
}
