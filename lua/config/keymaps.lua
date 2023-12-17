-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps hereby
local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Delete some pre-builds keys from lazyvim
keymap.del("n", "<C-s>")
keymap.del("n", "<leader>e")

--Delete with x does not copy to clipboard
keymap.set("n", "x", '"_x"')
-- Save file using leader w
keymap.set("n", "<leader>w", ":w<cr>", opts)
-- Open neo tree (sidepart files)
keymap.set("n", "<C-n>", ":Neotree<cr>", opts)
-- Keep just current buffer opened
keymap.set("n", "<leader>to", ":BufferLineCloseOthers<cr>", opts)
-- Adding a new tab (file)
keymap.set("n", "<leader>tn", ":tabnew<cr>", opts)