return {
  "tamton-aquib/duck.nvim",
  config = function()
    local wk = require("which-key")
    local map = vim.keymap.set

    wk.add({ { "<leader>a", name = "Duck", icon = "󰇥" } })

    map("n", "<leader>ad", function()
      require("duck").hatch("🦆", 20)
    end, { desc = "Release a duck" })
    map("n", "<leader>af", function()
      require("duck").hatch("🐈", 12)
    end, { desc = "Release a cat" })
    map("n", "<leader>ak", function()
      require("duck").cook()
    end, { desc = "Cook one duck/cat" })
    map("n", "<leader>aa", function()
      require("duck").cook_all()
    end, { desc = "Cook all" })
  end,
}
