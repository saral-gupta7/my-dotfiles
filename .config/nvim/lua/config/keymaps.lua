-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymap = vim.keymap

keymap.set("i", "jk", "<Esc>")

keymap.set("n", "cw", "yiw", { desc = "Copy inside quotes" })
keymap.set("n", "cp", '"_ci"<C-r>"<Esc>', { desc = "Replace inside double quotes with yanked" })

keymap.set("n", "<leader>ts", function()
  local api = require("supermaven-nvim.api")
  if api.is_running() then
    api.stop()
    print("Supermaven Disabled")
  else
    api.start()
    print("Supermaven Enabled")
  end
end, { desc = "Toggle Supermaven" })
