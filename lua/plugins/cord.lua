local git_branch = vim.fn.system("git branch --show-current"):gsub("\n", "")
local current_buf = vim.fn.expand("%:p:h:t") .. "/" .. vim.fn.expand("%:t")

return {
  "vyfor/cord.nvim",
  branch = "master",
  build = ":Cord update",
  event = "VeryLazy",
  opts = {
    text = {
      viewing = "Starring at " .. current_buf,
      editing = function(opts)
        return string.format("Editing %s - %s:%s", current_buf, opts.cursor_line, opts.cursor_char)
      end,
      workspace = function(opts)
        return string.format("In %s | branch: %s", opts.workspace, git_branch)
      end,
    },
    hooks = {
      workspace_change = function(_)
        git_branch = vim.fn.system("git branch --show-current"):gsub("\n", "")
      end,
      buf_enter = function(_)
        current_buf = vim.fn.expand("%:p:h:t") .. "/" .. vim.fn.expand("%:t")
      end,
    },
    buttons = {
      {
        label = "View Repository",
        url = function(opts)
          return opts.repo_url or "https://media.tenor.com/VSJ6xRhatEUAAAAi/kemusan-emu-otori.gif"
        end,
      },
    },
  },
}
