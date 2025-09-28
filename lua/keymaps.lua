local commands = require("commands")

local map = vim.keymap.set

map({'i', 'v', 't'}, "jk", "<esc>")

map("t", "<esc>", "<c-\\><c-n>")
map('n', '<space>;', 'q:', {})
map('t', '<A-q>', '<esc><esc>bd<CR>')

map({'i', 'n', 'v', 'x', 'c', 't'}, '<C-y>', '"+y', {})
map({'i', 'n', 'v', 'x', 'c', 't'}, '<C-p>', '"+p', {})
map('n', '<C-d>', '<C-d>zz')
map('n', '<C-u>', '<C-u>zz')
map('n', '<C-f>', '<C-f>zz')
map('n', '<C-b>', '<C-b>zz')

map('n', "<space>c", commands.command)
map('n', "<space>m", commands.man)
map('n', '<space>p', commands.permissions)

map('n', '<leader>gg', ':Cmd git ', {})
map('n', '<leader>gt', ':Cmd git status<CR>', {})
map('n', '<leader>gd', '<space>;iCmd git diff ', {})
map('n', '<leader>gco', '<space>;iCmd git commit -m "', {})
map('n', '<leader>gp', '<space>;iCmd git push -u origin main', {})
map('n', '<leader>gcr', '<space>;iCmd git clone ', {})

map('n', '<leader>w', ':w<CR>', {})
map('n', '<leader>x', ':w<CR> -', {})
map('n', '<leader>!', ':q!<CR>', {})
map('n', '<leader>q', ':bd!<CR>', {})
map("n", "<leader>s", ":w<CR>:so<CR>", {})

vim.api.nvim_set_keymap('n', '<M-f>', "<cmd>Telescope find_files<cr>", { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<A-r>', "<cmd>Telescope oldfiles<cr>", { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<A-t>', "<cmd>Telescope colorscheme<cr>", { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<A-h>', "<cmd>Telescope help_tags<cr>", { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<A-i>', "<cmd>Telescope highlights<cr>", { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<A-g>', "<cmd>Telescope live_grep<cr>", { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<space>b', "<cmd>Telescope buffers<cr>", { noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "-", "<cmd>Oil<CR>", {})


map({'i', 'n', 'v', 'x', 'c', 't'}, '<A-v>', function ()
    vim.cmd(":vsplit")
    vim.cmd.wincmd("L")
    vim.cmd("Telescope find_files")
end)

map({'i', 'n', 'v', 'x', 'c', 't'}, '<A-V>', function ()
    vim.cmd(":split")
    vim.cmd.wincmd("J")
    vim.cmd("Telescope find_files")
end)

vim.api.nvim_create_autocmd("CmdwinEnter", {
  callback = function()
    map("n", "<Esc>", "<C-c>", { buffer = true, noremap = true })
  end,
})
