return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    opts = {
      direction = "float",
    },
    config = function(_, opts)
      require("toggleterm").setup(opts)

      local Terminal = require("toggleterm.terminal").Terminal

      local postgres = Terminal:new({
        cmd = "bash -c 'psql -U postgres; exec bash'",
        dir = "git_dir",
        direction = "float",
        hidden = true,
      })

      local artisan = Terminal:new({
        dir = "git_dir",
        direction = "float",
        hidden = true,
      })

      local tinker = Terminal:new({
        cmd = "bash -c 'php artisan tinker; exec bash'",
        dir = "git_dir",
        direction = "float",
        hidden = true,
      })

      local queue = Terminal:new({
        cmd = "bash -c 'php artisan queue:work; exec bash'",
        dir = "git_dir",
        direction = "float",
        hidden = true,
      })

      local routes = Terminal:new({
        cmd = "bash -c 'php artisan route:list; exec bash'",
        dir = "git_dir",
        direction = "float",
        hidden = true,
      })

      local tests = Terminal:new({
        cmd = "bash -c 'php artisan test; exec bash'",
        dir = "git_dir",
        direction = "float",
        hidden = true,
      })

      local migrate = Terminal:new({
        cmd = "bash -c 'php artisan migrate; exec bash'",
        dir = "git_dir",
        direction = "float",
        hidden = true,
      })

      local cache_clear = Terminal:new({
        cmd = "bash -c 'php artisan optimize:clear; exec bash'",
        dir = "git_dir",
        direction = "float",
        hidden = true,
      })

      vim.keymap.set(
        "n",
        "<leader>tt",
        "<cmd>ToggleTerm<CR>",
        { desc = "Toggle Terminal" }
      )

      vim.keymap.set("n", "<leader>lp", function()
        postgres:toggle()
      end, {
        desc = "PostgreSQL Shell",
      })

      vim.keymap.set("n", "<leader>ta", function()
        artisan:toggle()
      end, {
        desc = "Laravel Terminal",
      })

      vim.keymap.set("n", "<leader>li", function()
        tinker:toggle()
      end, {
        desc = "Tinker",
      })

      vim.keymap.set("n", "<leader>lq", function()
        queue:toggle()
      end, {
        desc = "Queue Worker",
      })

      vim.keymap.set("n", "<leader>lr", function()
        routes:toggle()
      end, {
        desc = "Route List",
      })

      vim.keymap.set("n", "<leader>lt", function()
        tests:toggle()
      end, {
        desc = "Run Tests",
      })

      vim.keymap.set("n", "<leader>lm", function()
        migrate:toggle()
      end, {
        desc = "Run Migrations",
      })

      vim.keymap.set("n", "<leader>lc", function()
        cache_clear:toggle()
      end, {
        desc = "Clear Cache",
      })

      vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]], {
        desc = "Terminal Normal Mode",
      })
    end,
  },
}
