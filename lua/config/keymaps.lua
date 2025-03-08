-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

map("n", "\\", "i")
map("n", "|", "v")
map("i", "\\\\", "<ESC>")
map("n", ";", ":")

map({ "n", "v" }, "<F2>", "<CMD>lua vim.lsp.buf.rename()<CR>", { desc = "Rename variable" })

map("n", "_", "<CMD>BufferLineCyclePrev<CR>", { desc = "Change to previous buffer" })
map("n", "+", "<CMD>BufferLineCycleNext<CR>", { desc = "Change next buffer" })

map({ "n", "v" }, "<leader>dd", '"_dd', { desc = "Delete line without yanking" })
