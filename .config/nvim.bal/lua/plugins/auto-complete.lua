-- return {
--   {
--     "hrsh7th/cmp-nvim-lsp",
--     "neovim/nvim-lspconfig",
--     "hrsh7th/cmp-buffer",
--   },
--   {
--     "L3MON4D3/LuaSnip",
--     dependencies = {
--       "saadparwaiz1/cmp_luasnip",
--       "rafamadriz/friendly-snippets",
--     },
--   },
--   {
--     "hrsh7th/nvim-cmp",
-- dependencies = {
--     'hrsh7th/cmp-nvim-lsp', -- LSP source for nvim-cmp
--     'hrsh7th/cmp-buffer',   -- Buffer completions
--     'hrsh7th/cmp-path',     -- Path completions
--     'hrsh7th/cmp-cmdline',  -- Command-line completions
--     'L3MON4D3/LuaSnip',     -- Snippet engine
--     'saadparwaiz1/cmp_luasnip' -- Snippet completions
--   },
--     config = function()
--       local cmp = require("cmp")
--       require("luasnip.loaders.from_vscode").lazy_load()
--
--       cmp.setup({
--         snippet = {
--           expand = function(args)
--             require("luasnip").lsp_expand(args.body)
--           end,
--         },
--         window = {
--           completion = cmp.config.window.bordered(),
--           documentation = cmp.config.window.bordered(),
--         },
--         mapping = cmp.mapping.preset.insert({
--           ["<C-b>"] = cmp.mapping.scroll_docs(-4),
--           ["<C-f>"] = cmp.mapping.scroll_docs(4),
--           ["<C-Space>"] = cmp.mapping.complete(),
--           ["<C-e>"] = cmp.mapping.abort(),
--           ["<CR>"] = cmp.mapping.confirm({ select = true }),
--         }),
--         sources = cmp.config.sources({
--           { name = "nvim_lsp" },
--           { name = "luasnip" }, -- For luasnip users.
--         }, {
--           { name = "buffer" },
--         }),
--       })
--     end,
--   },
-- }
