vim.keymap.set("n", "<leader>wv", "<cmd>vsplit<CR>", {
  desc = "Vertical Split",
})

vim.keymap.set("n", "<leader>ws", "<cmd>split<CR>", {
  desc = "Horizontal Split",
})

vim.keymap.set("n", "<leader>wq", "<cmd>close<CR>", {
  desc = "Close Window",
})

vim.keymap.set("n", "<leader>we", "<C-w>=", {
  desc = "Equalize Windows",
})

vim.keymap.set("n", "<leader>wh", "<C-w>h", {
  desc = "Window Left",
})

vim.keymap.set("n", "<leader>wj", "<C-w>j", {
  desc = "Window Down",
})

vim.keymap.set("n", "<leader>wk", "<C-w>k", {
  desc = "Window Up",
})

vim.keymap.set("n", "<leader>wl", "<C-w>l", {
  desc = "Window Right",
})

vim.keymap.set("n", "<leader>wo", "<C-w>o", {
  desc = "Only Window",
})
