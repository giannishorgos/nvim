vim.opt.nu = true
vim.opt.relativenumber = false;
vim.opt.tabstop = 4 
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.updatetime = 30
-- vim.opt.colorcolumn = "80"

vim.opt.incsearch = true
vim.opt.hlsearch = false

vim.api.nvim_set_keymap('i', 'jj', '<Esc>', { noremap = true})
vim.api.nvim_set_keymap('n', '<C-d>', '<C-d>zz', { noremap = true})
vim.api.nvim_set_keymap('n', '<C-u>', '<C-u>zz', { noremap = true})
-- vim.api.nvim_set_keymap('i', '"', '""<left>', { noremap = true})
-- vim.api.nvim_set_keymap('i', "'", "''<left>", { noremap = true})
-- vim.api.nvim_set_keymap('i', '{', '{}<left><enter><Esc>O', { noremap = true})
-- vim.api.nvim_set_keymap('i', '(', '()<left>', { noremap = true})
-- vim.api.nvim_set_keymap('i', '[', '[]<left>', { noremap = true})

