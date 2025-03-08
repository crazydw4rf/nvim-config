return {
  "williamboman/mason.nvim",
  opts_extend = { "ensure_installed" },
  opts = {
    ensure_installed = {
      "bash-language-server",
      "shellcheck",
      "shfmt",
      "hyprls",
    },
  },
}
