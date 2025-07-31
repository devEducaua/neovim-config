vim.keymap.set("t", "<esc>", "<c-\\><c-n>")
vim.keymap.set({'n', 'v', 'x', 'c', 't'}, '<C-y>', '"+y', {})

vim.keymap.set('n', ';', 'q:', {})

vim.api.nvim_create_autocmd("CmdwinEnter", {
  callback = function()
    vim.keymap.set("n", "<Esc>", "<C-c>", { buffer = true, noremap = true })
  end,
})

vim.api.nvim_set_keymap('n', '<space>f', ":Zoom<CR>", { noremap = true })

vim.api.nvim_set_keymap('n', '<A-f>', "<cmd>Telescope find_files<cr>", { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<A-r>', "<cmd>Telescope oldfiles<cr>", { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<A-t>', "<cmd>Telescope colorscheme<cr>", { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<A-h>', "<cmd>Telescope help_tags<cr>", { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<A-i>', "<cmd>Telescope highlights<cr>", { noremap = true, silent = true})

vim.api.nvim_set_keymap("n", "-", "<cmd>Oil<CR>", {})
vim.api.nvim_set_keymap("n", "<A-p>", ":TransparentToggle<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<space>c', ':Cmd ', {})
vim.api.nvim_set_keymap('n', '<space>s', ';iCmd grep -rn "', {})

vim.api.nvim_set_keymap('n', '<space>g', ':Cmd git ', {})
vim.api.nvim_set_keymap('n', '<space>gt', ':Cmd git status<CR>', {})
vim.api.nvim_set_keymap('n', '<space>gf', ':Cmd git diff<CR>', {})

vim.api.nvim_set_keymap('n', '<space>gc', ';iCmd git commit -m "', {})
vim.api.nvim_set_keymap('n', '<space>gp', ';iCmd git push -u origin main', {})
vim.api.nvim_set_keymap('n', '<space>gr', ';iCmd git clone ', {})

vim.api.nvim_set_keymap('n', '<space>w', ':w<CR>', {})
vim.api.nvim_set_keymap('n', '<space>x', ':x<CR>', {})
vim.api.nvim_set_keymap('n', '<space>!', ':q!<CR>', {})
vim.api.nvim_set_keymap('n', '<space>q', ':q<CR>', {})
