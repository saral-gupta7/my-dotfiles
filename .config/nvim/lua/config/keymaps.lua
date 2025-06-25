-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.api.nvim_set_keymap("i", "jk", "<ESC>", { noremap = false })

local keymap = vim.keymap

keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<leader>qq", function()
  -- Go to the last " on the line
  local line = vim.fn.getline(".")
  local col = line:find('".*"$') or line:find('"[^"]*"')
  if col then
    vim.api.nvim_win_set_cursor(0, { vim.fn.line("."), #line:match('.*"') })
  end
end, { desc = "Go to end of last quote on line" })

keymap.set("n", "<leader>t", "ggO")
keymap.set("n", "<leader>h", "Go")
keymap.set("n", ";", ":")

-- Copy all contents  in a file
keymap.set("n", "<leader>aa", "ggVGy")
keymap.set("n", "<leader>dd", "ggVGc")
keymap.set("n", "j", "gj")
keymap.set("n", "k", "gk")

-- format all

keymap.set("n", "<leader>a", "ggVG=")

-- Move blocks of code inside neovim
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- paste at the end
keymap.set("n", "<leader>p", "ggP")
keymap.set("n", "<leader>P", "Gp")
