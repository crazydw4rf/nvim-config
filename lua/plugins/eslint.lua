return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      eslint = {
        settings = {
          workingDirectories = { mode = "auto" },
          format = true,
        },
      },
    },
  }
}
