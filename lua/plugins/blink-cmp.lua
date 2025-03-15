return {
  "saghen/blink.cmp",
  ---@module 'blink.cmp'
  ---@type blink.cmp.Config
  opts = {
    sources = {
      compat = {},
      default = function()
        if vim.bo.filetype == "copilot-chat" then
          return {}
        end
        return { "lsp", "path", "snippets", "buffer" }
      end,
    },
  },
}
