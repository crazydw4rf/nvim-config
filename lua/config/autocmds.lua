-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

local nca = vim.api.nvim_create_autocmd

-- Bash languange server
nca("FileType", {
  pattern = { "sh", "zshrc", "zsh", "bashrc", "bash" },
  callback = function()
    vim.lsp.start({
      name = "bash-language-server",
      cmd = { "bash-language-server", "start" },
    })
  end,
})

nca({ "BufEnter", "BufWinEnter" }, {
  pattern = { "*.hl", "hypr*.conf" },
  callback = function(_)
    -- print(string.format("starting hyprls for %s", vim.inspect(event)))
    vim.lsp.start({
      name = "hyprlang",
      cmd = { "hyprls" },
      root_dir = vim.fn.getcwd(),
    })
  end,
})

nca("LspAttach", {
  callback = function(event)
    vim.keymap.set("n", "J", vim.diagnostic.open_float, {
      desc = "Diagnostic hover",
      noremap = true,
      silent = true,
      buffer = event.buf,
    })
  end,
})

nca({ "ColorScheme", "WinEnter" }, {
  group = vim.api.nvim_create_augroup("CustomColor", { clear = true }),
  callback = function()
    vim.api.nvim_set_hl(0, "LineNr", { fg = "#7f849c", bg = "NONE" })
    vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#5FD85F", bg = "NONE" })
  end,
})
