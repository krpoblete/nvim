return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    opts = {
      ensure_installed = {
        "lua",
        "vim",
        "vimdoc",
        "php",
        "html",
        "css",
        "javascript",
        "json",
        "bash",
        "sql",
      },
      highlight = {
        enable = true,
      },
    },
  },
}
