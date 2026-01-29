-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "markdown" }, -- Apply to markdown files
  callback = function()
    vim.opt_local.spell = false -- Disable spell check locally for the buffer
  end,
})
