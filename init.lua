local function reload()
  dofile(vim.env.MYVIMRC)
  print("Configuration reloaded")
end

vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.keymap.set("n", "<leader>ve", ":tabnew $MYVIMRC<cr>", { desc = "Open neovim configuration file" })
vim.keymap.set("n", "<leader>vs", reload, { desc = "Re-source neovim configuration file" })
vim.keymap.set("i", "jk", "<esc>", { desc = "Exit insert mode" })
vim.keymap.set("n", "<C-s>", ":w<cr>", { desc = "Save current file" })
vim.keymap.set("i", "<C-s>", "<esc>:w<cr>", { desc = "Save current file" })
