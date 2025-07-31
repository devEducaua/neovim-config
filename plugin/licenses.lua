local function get_licenses(d)
    local args = d.fargs

    -- Templete Examples
    -- mit  ggpl2  pl3  gpl3-header  apache  apache-header  agpl3  agpl3-header  bsd2  bsd3
    local template = args[1]

    if not template then
        vim.cmd("Cmd wget -O LICENSE https://raw.githubusercontent.com/licenses/license-templates/refs/heads/master/templates/gpl3.txt")
        return
    end

    vim.cmd("Cmd wget -O LICENSE https://raw.githubusercontent.com/licenses/license-templates/refs/heads/master/templates/" .. template .. ".txt")
end

vim.api.nvim_create_user_command('License', get_licenses, { nargs = "*"})
