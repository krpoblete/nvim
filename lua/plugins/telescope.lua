return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    config = function()
      local builtin = require("telescope.builtin")

      vim.keymap.set("n", "<leader>ff", builtin.find_files, {
        desc = "Find Files"
      })

      vim.keymap.set("n", "<leader>fg", builtin.live_grep, {
        desc = "Live Grep"
      })

      vim.keymap.set("n", "<leader>fb", builtin.buffers, {
        desc = "Buffers"
      })

      vim.keymap.set("n", "<leader>fh", builtin.help_tags, {
        desc = "Help Tags"
      })

      vim.keymap.set("n", "<leader>fm", function()
        builtin.find_files({
          cwd = "app/Models",
        })
      end, { desc = "Find Models" })

      vim.keymap.set("n", "<leader>fc", function()
        builtin.find_files({
          cwd = "app/Http/Controllers",
        })
      end, { desc = "Find Controllers" })

      vim.keymap.set("n", "<leader>fr", function()
        builtin.find_files({
          cwd = "routes",
        })
      end, { desc = "Find Routes" })

      vim.keymap.set("n", "<leader>fv", function()
        builtin.find_files({
          cwd = "resources/views",
        })
      end, { desc = "Find Views" })

      vim.keymap.set("n", "<leader>fj", function()
        builtin.find_files({
          cwd = "app/Jobs",
        })
      end, { desc = "Find Jobs" })

      vim.keymap.set("n", "<leader>ft", function()
        builtin.find_files({
          cwd = "tests",
        })
      end, { desc = "Find Tests" })

      vim.keymap.set("n", "<leader>fz", function()
        builtin.find_files({
          cwd = "database/migrations",
        })
      end, { desc = "Find Migrations" })

      vim.keymap.set("n", "<leader>fy", function()
        builtin.find_files({
          cwd = "database/factories",
        })
      end, { desc = "Find Factories" })

      vim.keymap.set("n", "<leader>fk", function()
        builtin.find_files({
          cwd = "database/seeders",
        })
      end, { desc = "Find Seeders" })

      vim.keymap.set("n", "<leader>fp", function()
        builtin.find_files({
          cwd = "app/Providers",
        })
      end, { desc = "Find Providers" })

      vim.keymap.set("n", "<leader>fw", function()
        builtin.find_files({
          cwd = "app/Http/Middleware",
        })
      end, { desc = "Find Middleware" })

      vim.keymap.set("n", "<leader>fe", function()
        vim.cmd("edit .env")
      end, { desc = "Open .env" })

      vim.keymap.set("n", "<leader>fa", function()
        builtin.live_grep()
      end, { desc = "Search Project" })
    end,
  },
}
