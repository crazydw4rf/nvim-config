-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.filetype.add({
  pattern = {
    [".*/waybar/config"] = "jsonc",
    [".*/hypr/.*%.conf"] = "hyprlang",
  },
})

local is_win_or_wsl = vim.loop.os_uname().sysname == "Windows_NT" or os.getenv("WSL_DISTRO_NAME") ~= nil or
    os.getenv("WSL_INTEROP") ~= nil

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
