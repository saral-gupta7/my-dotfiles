-- return {
--   "marko-cerovac/material.nvim",
--   config = function()
--     require("material").setup({
--       disable = {
--         background = true,
--       },
--     })
--     vim.g.material_style = "deep ocean"
--     vim.cmd.colorscheme("material")
--   end,
-- }

-- return {
--   'ribru17/bamboo.nvim',
--   lazy = false,
--   priority = 1000,
--   config = function()
--     require('bamboo').setup {
--       -- optional configuration here
--       style = 'vulgaris', -- 'vulgaris' (regular), 'multiplex' (greener), or 'light'
--     }
--     require('bamboo').load()
--   end,
-- }

return {
  "vague-theme/vague.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("vague").setup({
      -- optional configuration here
      transparent = false,
      -- on_highlights = function(hl, colors) ... end,
    })
    vim.cmd.colorscheme("vague")
  end,
}
