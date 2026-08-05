return {
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    config = function()
      local wk = require("which-key")

      wk.setup({})

      wk.add({
        { "<leader>c", group = "Code" },
        { "<leader>f", group = "Find" },
        { "<leader>g", group = "Git" },
        { "<leader>h", group = "Harpoon" },
        { "<leader>l", group = "Laravel" },
        --[[ { "<leader>r", group = "Refactor" }, ]]
        { "<leader>s", group = "Session" },
        { "<leader>t", group = "Terminal" },
        { "<leader>w", group = "Windows" },
        { "<leader>x", group = "Diagnostics" },
      })
    end,
  },
}
