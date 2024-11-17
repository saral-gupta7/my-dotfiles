-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

keymap.set("i", "jk", "<ESC>")

-- toggle checked / create checkbox if it doesn't exist
vim.keymap.set("n", "<leader>nn", require("markdown-togglecheck").toggle, { desc = "Toggle Checkmark" })
-- toggle checkbox (it doesn't remember toggle state and always creates [ ])
vim.keymap.set("n", "<leader>nN", require("markdown-togglecheck").toggle_box, { desc = "Toggle Checkbox" })
