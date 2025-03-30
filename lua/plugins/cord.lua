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
        return string.format("Editing %s - %s:%s", opts.filename, opts.cursor_line, opts.cursor_char)
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
    buttons = {
      {
        label = "View Repository",
        url = function(opts)
          return opts.repo_url or "https://www.youtube.com/watch?v=xvFZjo5PgG0"
        end,
      },
    },
  },
}
