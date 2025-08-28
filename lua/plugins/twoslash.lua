return {
  "marilari88/twoslash-queries.nvim",
  dependencies = {
    "neovim/nvim-lspconfig"
  },
  opts = {
    multi_line = true,
    is_enabled = false,
    highlight = "Type",
  },
  config = function(_, opts)
    require("twoslash-queries").setup(opts)
    require("lspconfig")["vtsls"].setup({
      on_attach = function(client, bufnr)
        require("twoslash-queries").attach(client, bufnr)
      end
    })
  end
}
