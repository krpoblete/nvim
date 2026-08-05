vim.api.nvim_create_autocmd("FileType", {
  pattern = {
    "lua",
    "javascript",
    "typescript",
    "html",
    "css",
    "json",
    "yaml"
  },
  callback = function()
    vim.bo.shiftwidth = 2
    vim.bo.tabstop = 2
    vim.bo.softtabstop = 2
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = {
    "php",
    "blade"
  },
  callback = function()
    vim.bo.shiftwidth = 4
    vim.bo.tabstop = 4
    vim.bo.softtabstop = 4
  end,
})
