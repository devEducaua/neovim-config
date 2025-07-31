
vim.api.nvim_create_user_command('Man', function (d)
    local args = d.fargs
    vim.cmd("Cmd man " .. args[1])
end, { nargs="*" })
