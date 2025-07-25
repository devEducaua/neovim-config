vim.api.nvim_create_user_command('Cmd', function (args)
    local arg = 'term'

    vim.cmd.new()
    vim.cmd.wincmd("J")

    if (args['args']) then
        arg = arg .. ' ' .. args['args']
    end

    if (#arg == 5) then
        vim.cmd("startinsert")
    end

    vim.cmd(arg)
end, { nargs = "*" })
