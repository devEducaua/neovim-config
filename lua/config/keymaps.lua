local key = vim.api.nvim_set_keymap

key('n', '<A-f>', "<cmd>Telescope find_files<cr>", { noremap = true, silent = true})
key('n', '<A-r>', "<cmd>Telescope oldfiles<cr>", { noremap = true, silent = true})
key('n', '<A-t>', "<cmd>Telescope colorscheme<cr>", { noremap = true, silent = true})
key('n', '<A-h>', "<cmd>Telescope help_tags<cr>", { noremap = true, silent = true})

key("n", "-", "<cmd>Oil<CR>", {})
key("n", "<A-p>", ":TransparentToggle<CR>", { noremap = true, silent = true })
