local map = vim.keymap.set

map("n", "\\", "i")
map("n", "|", "v")
map("i", "\\\\", "<ESC>")

map({ "n", "v" }, "<F2>", "<CMD>lua vim.lsp.buf.rename()<CR>", { desc = "Rename variable" })
map({ "n", "v" }, "<leader>dd", '"_dd', { desc = "Delete line without yanking" })
