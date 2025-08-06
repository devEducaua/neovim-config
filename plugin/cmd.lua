local function cmd(args)
    local arg = 'term'

    vim.cmd.new()
    vim.cmd.wincmd("J")

    if (args['args']) then
        arg = arg .. ' ' .. args['args']
    end

    if (#arg == 5) then
        vim.cmd("startinsert")
    end

    vim.cmd("resize -15<CR>")

    vim.cmd(arg)
end

vim.api.nvim_create_user_command('Cmd', cmd, { nargs = "*" })

vim.api.nvim_create_user_command('C', cmd, { nargs = "*" })

vim.api.nvim_create_user_command('Tree', ':Cmd tree --gitignore', { nargs = "*" })
