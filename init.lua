require("config.lazy")

vim.o.number = true
vim.o.relativenumber = true

vim.opt.tabstop = 4 
vim.opt.shiftwidth = 4 
vim.opt.softtabstop = 4 
vim.opt.expandtab = true 

vim.opt.fillchars = { eob = " ", vert = " " }

vim.keymap.set('n', '<A-h>', '<C-w>h', { noremap = true, silent = true })
vim.keymap.set('n', '<A-l>', '<C-w>l', { noremap = true, silent = true })
vim.keymap.set('n', '<A-j>', '<C-w>j', { noremap = true, silent = true })
vim.keymap.set('n', '<A-k>', '<C-w>k', { noremap = true, silent = true })
vim.keymap.set('n', '<A-q>', '<C-w>q', { noremap = true, silent = true })

vim.cmd("set termguicolors")
vim.cmd("syntax enable")

vim.opt.showmode = false

vim.api.nvim_create_autocmd("WinClosed", {
  pattern = "*",
  callback = function()
    local windows = vim.fn.win_findbuf(vim.fn.bufnr())
    if #windows == 1 and vim.fn.bufname() == "sfm" then
      vim.cmd("quit")
    end
  end,
})

-- vim.cmd("highlight Normal guibg=none")
-- vim.cmd("highlight NonText guibg=none") 
-- vim.cmd("highlight SignColumn guibg=none") 
-- vim.cmd("highlight StatusLine guibg=none")
