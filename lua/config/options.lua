vim.filetype.add({
  pattern = {
    [".*/waybar/config"] = "jsonc",
    [".*/hypr/.*%.conf"] = "hyprlang",
  },
})

vim.diagnostic.config({
  virtual_text = false,
  -- virtual_lines = false,
  -- virtual_lines = { current_line = true },
})

local is_win_or_wsl = vim.loop.os_uname().sysname == "Windows_NT"
  or os.getenv("WSL_DISTRO_NAME") ~= nil
  or os.getenv("WSL_INTEROP") ~= nil

if is_win_or_wsl then
  vim.g.clipboard = {
    name = "win32yank",
    copy = {
      ["+"] = "win32yank.exe -i --crlf",
      ["*"] = "win32yank.exe -i --crlf",
    },
    paste = {
      ["+"] = "win32yank.exe -o --lf",
      ["*"] = "win32yank.exe -o --lf",
    },
    cache_enabled = true,
  }
end

vim.g.lazyvim_eslint_auto_format = true
vim.o.backupcopy = "yes"

vim.g.lazyvim_rust_diagnostics = "bacon-ls"
vim.g.lazyvim_python_lsp = "basedpyright"
vim.g.lazyvim_python_ruff = "ruff"
