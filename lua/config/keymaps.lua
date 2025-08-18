vim.api.nvim_set_keymap('n', '<A-f>', "<cmd>Telescope find_files<cr>", { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<A-r>', "<cmd>Telescope oldfiles<cr>", { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<A-t>', "<cmd>Telescope colorscheme<cr>", { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<A-h>', "<cmd>Telescope help_tags<cr>", { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<A-i>', "<cmd>Telescope highlights<cr>", { noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "-", "<cmd>Oil<CR>", {})
vim.api.nvim_set_keymap("n", "<A-p>", ":TransparentToggle<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<space>cm', ':C<CR>', {})
vim.api.nvim_set_keymap("n", "<space>d", ":Td<CR>", {})
vim.api.nvim_set_keymap('n', '<space>s', '<space>;iCmd grep -rn "', {})
vim.api.nvim_set_keymap('n', '<space>f', "<space>;i e ~/", {})
vim.api.nvim_set_keymap("n", "<A-w>", "<space>;iCmd wget ", {})

vim.api.nvim_set_keymap('n', '<space>g', ':Cmd git ', {})
vim.api.nvim_set_keymap('n', '<space>gt', ':Cmd git status<CR>', {})
vim.api.nvim_set_keymap('n', '<space>gd', '<space>;iCmd git diff ', {})
vim.api.nvim_set_keymap('n', '<space>gco', '<space>;iCmd git commit -m "', {})
vim.api.nvim_set_keymap('n', '<space>gp', '<space>;iCmd git push -u origin main', {})
vim.api.nvim_set_keymap('n', '<space>gcr', '<space>;iCmd git clone ', {})

vim.api.nvim_set_keymap('n', '<space>w', ':w<CR>', {})
vim.api.nvim_set_keymap('n', '<space>x', ':w<CR> -', {})
vim.api.nvim_set_keymap('n', '<space>!', ':q!<CR>', {})
vim.api.nvim_set_keymap('n', '<space>q', ':q<CR>', {})
vim.api.nvim_set_keymap("n", "<A-s>", ":so $MYVIMRC<CR>", {})

vim.keymap.set({'i', 'v', 'x', 'c', 't'}, "jk", "<esc>")
vim.keymap.set({ 'i', 'x', 'v'}, "<esc>", "<Nop>")

vim.keymap.set({'i', 'n', 'v', 'x', 'c', 't'}, '<C-y>', '"+y', {})
vim.keymap.set("t", "<esc>", "<c-\\><c-n>")
vim.keymap.set('n', '<space>;', 'q:', {})

-- vim.keymap.set('n', '<space>h', function()
--     local name = require("oil").get_cursor_entry().name
--     local keys = "q:" .. "iCmd " .. name .. "<esc>Bi"
--     keys = vim.api.nvim_replace_termcodes(keys, true, false, true)
--     vim.api.nvim_feedkeys(keys, 'n', false)
-- end)

vim.api.nvim_set_keymap('n', 'C-d', 'C-dzz', {})
vim.api.nvim_set_keymap('n', 'C-u', 'C-uzz', {})
vim.api.nvim_set_keymap('n', 'C-b', 'C-bzz', {})
vim.api.nvim_set_keymap('n', 'C-f', 'C-fzz', {})

vim.api.nvim_create_autocmd("CmdwinEnter", {
  callback = function()
    vim.keymap.set("n", "<Esc>", "<C-c>", { buffer = true, noremap = true })
  end,
})
