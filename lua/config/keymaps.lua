-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

map("n", "\\", "i")
map("n", "|", "v")
map("i", "\\\\", "<ESC>")
map("i", "jj", "<ESC>")
map("i", "kk", "<Esc>v")
map("n", ";", ":")

map({ "n", "v" }, "<F2>", "<CMD>lua vim.lsp.buf.rename()<CR>", { desc = "Rename variable" })

map("n", "_", "<CMD>BufferLineCyclePrev<CR>", { desc = "Change to previous buffer" })
map("n", "+", "<CMD>BufferLineCycleNext<CR>", { desc = "Change next buffer" })

map({ "n", "v" }, "<leader>dd", '"_dd', { desc = "Delete line without yanking" })

-- Who the hell in this world still uses arrow keys for navigation?
map({ "n", "v" }, "<Up>", '<CMD>echo "↑ lol. no."<CR>', { noremap = true })
map({ "n", "v" }, "<Left>", '<CMD>echo "Left? Really? Did your HJKL keys break?"<CR>', { noremap = true })
map({ "n", "v" }, "<Down>", '<CMD>echo "Down? Are you lost? Try ’j‘ like a pro."<CR>', { noremap = true })
map({ "n", "v" }, "<Right>", '<CMD>echo "Right... because ’l‘ was just too efficient?"<CR>', { noremap = true })

map("n", "<CR>", "m`o<Esc>")
map("n", "<S-CR>", "m`O<Esc>")
