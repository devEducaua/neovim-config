
vim.keymap.set("t", "<esc><esc>", "<c-\\><c-n>")
vim.keymap.set({'n', 'v', 'x', 'c', 't'}, '<C-y>', '"+y', {})

vim.api.nvim_set_keymap('n', '<A-f>', "<cmd>Telescope find_files<cr>", { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<A-r>', "<cmd>Telescope oldfiles<cr>", { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<A-t>', "<cmd>Telescope colorscheme<cr>", { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<A-h>', "<cmd>Telescope help_tags<cr>", { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<A-i>', "<cmd>Telescope highlights<cr>", { noremap = true, silent = true})

vim.api.nvim_set_keymap("n", "-", "<cmd>Oil<CR>", {})
vim.api.nvim_set_keymap("n", "<A-p>", ":TransparentToggle<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<space>t', '<cmd>Cmd<CR>', {})
