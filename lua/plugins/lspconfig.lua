return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      diagnostics = {
        update_in_insert = false,
        virtual_text = false,
      },
      servers = {
        bacon_ls = {
          init_options = {
            updateOnSave = true,
            updateOnSaveWaitMillis = 1000,
            updateOnChange = false,
          },
        },
      },
      setup = {
        bacon_ls = function(_, opts)
          require("lspconfig").bacon_ls.setup(vim.tbl_deep_extend("force", opts, {
            on_attach = function(client, _)
              client.server_capabilities.definitionProvider = false
              client.server_capabilities.hoverProvider = false
              client.server_capabilities.referencesProvider = false
              client.server_capabilities.implementationProvider = false
              client.server_capabilities.completionProvider = nil
            end,
          }))
          return true
        end,
      },
    },
  },
  {
    "mrcjkb/rustaceanvim",
    opts = {
      server = {
        default_settings = {
          ["rust-analyzer"] = {
            diagnostics = { enable = false },
            checkOnSave = { enable = false },
          },
        },
      },
    },
  },
}
