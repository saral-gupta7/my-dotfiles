-- return {
--   "tiagovla/tokyodark.nvim",
--   opts = {
--     -- custom options here
--   },
--   config = function(_, opts)
--     require("tokyodark").setup(opts) -- calling setup is optional
--     vim.cmd([[colorscheme tokyodark]])
--   end,
-- }
--
--
vim.g.material_style = "deep ocean"
return {
  "marko-cerovac/material.nvim",

  config = function()
    require("material").setup({
      -- ... other settings
      disable = {
        -- ... other settings
        background = true,
      },
    })

    vim.cmd([[colorscheme material]])
  end,
}
