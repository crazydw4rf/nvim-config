-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

map("n", "\\", "i")
map("n", "|", "v")
map("i", "\\\\", "<ESC>")
map("n", ";", ":")

map({ "n", "v" }, "<leader>e", "<CMD>Neotree focus<CR>", { desc = "Focus to Neotree" })
map({ "n", "v" }, "<F2>", "<CMD>lua vim.lsp.buf.rename()<CR>", { desc = "Rename variable" })
map({ "n" }, "<C-Tab>", "<CMD>BufferLineCycleNext<CR>", { desc = "Next buffer" })
map("i", "<C-BS>", "<ESC>diwi", { desc = "Delete whole word" })
map("n", "<leader>x", " bd", { desc = "Close buffer" })
