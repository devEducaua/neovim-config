local function todo()
    vim.cmd.vnew()
    vim.cmd.wincmd("L")
    vim.cmd("e ~/links.md")
end

vim.api.nvim_create_user_command('Todo', todo, {})
