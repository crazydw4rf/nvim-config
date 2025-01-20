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
map({ "n" }, "<C-I>", "<CMD>BufferLineCycleNext<CR>", { desc = "Next buffer" })
map("i", "<C-H>", "<ESC>diwi", { desc = "Delete whole word" })
map("n", "<leader>x", "<Space>bd", { desc = "Close buffer" })

-- duck.nvim
map("n", "<leader>dd", function()
  require("duck").hatch("🦆", 20)
end, { desc = "Release a duck" }) -- A pretty fast duck
map("n", "<leader>dc", function()
  require("duck").hatch("🐈", 12)
end, { desc = "Release a cat" }) -- Quite a mellow cat
