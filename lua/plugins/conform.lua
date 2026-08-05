return {
  {
    "stevearc/conform.nvim",
    opts = {
      format_on_save = {
        timeout_ms = 500,
        lsp_fallback = true,
      },
      formatters_by_ft = {
        php = { "pint", "php_cs_fixer" },
        blade = { "prettier" },
        javascript = { "prettier" },
        typescript = { "prettier" },
        css = { "prettier" },
        html = { "prettier" },
        json = { "prettier" },
      },
    },
    config = function(_, opts)
      require("conform").setup(opts)

      vim.keymap.set("n", "<leader>cf", function()
        require("conform").format({
          async = true,
          lsp_fallback = true,
        })
      end, { desc = "Format File" })
    end,
  },
}
