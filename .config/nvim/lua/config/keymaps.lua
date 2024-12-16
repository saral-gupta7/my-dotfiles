-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyLazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap
-- local opts = { noremap = true, silent = true }

keymap.set("i", "jk", "<ESC>")

-- toggle checked / create checkbox if it doesn't exist
keymap.set("n", "<leader>nn", require("markdown-togglecheck").toggle, { desc = "Toggle Checkmark" })
-- toggle checkbox (it doesn't remember toggle state and always creates [ ])
keymap.set("n", "<leader>nN", require("markdown-togglecheck").toggle_box, { desc = "Toggle Checkbox" })

-- Move line up
keymap.set("n", "<C-j>", ":m .+1<CR>==", { desc = "Move line down" })
keymap.set("n", "<C-k>", ":m .-2<CR>==", { desc = "Move line up" })
-- Move selected block up and down
keymap.set("v", "<C-k>", ":m '<-2<CR>gv=gv", { desc = "Move block up" })
keymap.set("v", "<C-j>", ":m '>+1<CR>gv=gv", { desc = "Move block down" })
