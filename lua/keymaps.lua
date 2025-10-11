local commands = require("commands")

local map = vim.keymap.set
vim.g.mapleader = " "

map({'i', 'v', 't'}, "jk", "<esc>")

map("t", "<esc>", "<c-\\><c-n>")
map('n', '<space>;', 'q:', {})
map('t', '<A-q>', '<esc><esc>bd<CR>')

map({'n', 'v', 'x', 'c', 't'}, '<C-y>', '"+y', {})
map({'n', 'v', 'x', 'c', 't'}, '<C-p>', '"+p', {})
map('i', '<C-p>', '<esc>"+pa')
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

map('n', '<leader>w', ':up<CR>', {})
map('n', '<leader>x', ':up<CR> :Oil<CR>', {})
map('n', '<leader>!', ':q!<CR>', {})
map('n', '<leader>q', ':bd!<CR>', {})
map("n", "<leader>s", ":w<CR>:so<CR>", {})

map("n", "<leader>f", ":Telescope find_files<CR>")
map("n", "<leader>tt", ":Telescope<CR>")
map("n", "<leader>th", ":Telescope help_tags<CR>")

map("n", "-", "<cmd>Oil<CR>", {})

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

vim.api.nvim_create_autocmd('BufEnter', {
    pattern = { "c", "sh", "man" },
    callback = function ()
        map("n", "K", function ()
            vim.cmd("Man " .. vim.fn.expand("<cword>"))
        end, { buffer = true })
    end
})

vim.api.nvim_create_autocmd('FileType', {
    pattern = "man",
    callback = function ()
        map('n', '<A-l>', function() vim.opt_local.relativenumber = not vim.opt_local.relativenumber:get() end, { buffer = true })
    end
})
