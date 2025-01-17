local git_branch = vim.fn.system("git branch --show-current"):gsub("\n", "")

return {
  "vyfor/cord.nvim",
  branch = "client-server",
  build = ":Cord update",
  event = "VeryLazy",
  opts = {
    variables = {
      git_status = function(_)
        return git_branch
      end,
    },
    text = {
      viewing = function(opts)
        return "Starring at " .. opts.filename
      end,
      editing = function(opts)
        return "Editing " .. opts.filename
      end,
      workspace = function(opts)
        return string.format("In %s | branch: %s", opts.workspace_name, opts.git_status())
      end,
    },
    hooks = {
      workspace_change = function(_)
        git_branch = vim.fn.system("git branch --show-current"):gsub("\n", "")
      end,
    },
  },
}
