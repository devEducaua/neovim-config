require("config.lazy")

vim.o.number = true
vim.o.relativenumber = true

vim.opt.tabstop = 4 
vim.opt.shiftwidth = 4 
vim.opt.softtabstop = 4 
vim.opt.expandtab = true 

vim.opt.fillchars = { eob = " " }

vim.keymap.set('n', '<A-h>', '<C-w>h', { noremap = true, silent = true })
vim.keymap.set('n', '<A-l>', '<C-w>l', { noremap = true, silent = true })
vim.keymap.set('n', '<A-j>', '<C-w>j', { noremap = true, silent = true })
vim.keymap.set('n', '<A-k>', '<C-w>k', { noremap = true, silent = true })
vim.keymap.set('n', '<A-q>', '<C-w>q', { noremap = true, silent = true })

vim.cmd("set termguicolors")
vim.cmd("syntax enable")

vim.cmd("highlight Normal guibg=none")  -- Faz o fundo da área principal transparente
vim.cmd("highlight NonText guibg=none") -- Para as áreas não editáveis (linhas de status, etc.)
vim.cmd("highlight SignColumn guibg=none") -- Coluna de sinais

