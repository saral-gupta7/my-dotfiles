-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.api.nvim_set_keymap("i", "jk", "<ESC>", { noremap = false })

-- this is a comment
local keymap = vim.keymap

keymap.set("n", "<C-d>", "<C-d>zz")
