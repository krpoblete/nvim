return {
  {
    "folke/tokyonight.nvim",
    priority = 1000,
    config = function()
      require("tokyonight").setup({
        style = "storm",

        styles = {
          sidebars = "dark",
          floats = "dark",
        },
      })

      vim.cmd.colorscheme("tokyonight")
    end,
  },
}
