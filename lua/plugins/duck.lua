return {
  "tamton-aquib/duck.nvim",
  config = function()
    local map = vim.keymap.set
    map("n", "<leader>dd", function()
      require("duck").hatch("🦆", 20)
    end, { desc = "Release a duck" })
    map("n", "<leader>dd", function()
      require("duck").hatch("🐈", 12)
    end, { desc = "Release a cat" })
    map("n", "<leader>dk", function()
      require("duck").cook()
    end, {})
    map("n", "<leader>da", function()
      require("duck").cook_all()
    end, {})
  end,
}
