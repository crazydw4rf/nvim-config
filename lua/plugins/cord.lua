local git_branch = vim.fn.system("git branch --show-current"):gsub("\n", "")

return {
  "vyfor/cord.nvim",
  branch = "master",
  build = ":Cord update",
  event = "VeryLazy",
  opts = {
    variables = {
      git_status = git_branch,
    },
    text = {
      viewing = function(opts)
        return "Starring at " .. opts.filename
      end,
      editing = function(opts)
        local text = "Editing " .. opts.filename
        if vim.bo.modified then
          text = text .. "[+]"
        end
        return text
      end,
      workspace = function(opts)
        return string.format("In %s | branch: %s", opts.workspace, opts.git_status)
      end,
    },
    hooks = {
      workspace_change = function(_)
        git_branch = vim.fn.system("git branch --show-current"):gsub("\n", "")
      end,
    },
  },
}
