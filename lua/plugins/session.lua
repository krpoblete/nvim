return {
  {
    "rmagatti/auto-session",

    config = function()
      require("auto-session").setup({
        auto_restore = false,
        auto_save = true,

        suppressed_dirs = {
          "~/",
          "~/Downloads",
          "~/Documents",
        },
      })

      vim.keymap.set("n", "<leader>ss", "<cmd>SessionSave<CR>", {
        desc = "Save Session",
      })

      vim.keymap.set("n", "<leader>sr", "<cmd>SessionRestore<CR>", {
        desc = "Restore Session",
      })

      vim.keymap.set("n", "<leader>sd", "<cmd>SessionDelete<CR>", {
        desc = "Delete Session",
      })
    end,
  },
}
