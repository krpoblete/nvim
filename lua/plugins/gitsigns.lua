return {
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("gitsigns").setup()

      local gs = require("gitsigns")

      vim.keymap.set("n", "]c", gs.next_hunk, {
        desc = "Next Git Change",
      })

      vim.keymap.set("n", "[c", gs.prev_hunk, {
        desc = "Previous Git Change",
      })

      vim.keymap.set("n", "<leader>gp", gs.preview_hunk, {
        desc = "Preview Hunk",
      })

      vim.keymap.set("n", "<leader>gs", gs.stage_hunk, {
        desc = "Stage Hunk",
      })

      vim.keymap.set("n", "<leader>gu", gs.undo_stage_hunk, {
        desc = "Undo Stage Hunk",
      })

      vim.keymap.set("n", "<leader>gh", gs.reset_hunk, {
        desc = "Reset Hunk",
      })

      vim.keymap.set("n", "<leader>gb", gs.blame_line, {
        desc = "Git Blame",
      })

      vim.keymap.set("n", "<leader>gd", gs.diffthis, {
        desc = "Git Diff",
      })
    end,
  },
}
