local v = vim

local function get_licenses(d)
    local args = d.fargs

    -- Templete Examples
    -- mit  ggpl2  pl3  gpl3-header  apache  apache-header  agpl3  agpl3-header  bsd2  bsd3
    local template = args[1]

    if not template then
        v.cmd("Cmd wget -O LICENSE https://raw.githubusercontent.com/licenses/license-templates/refs/heads/master/templates/gpl3.txt")
        return
    end

    v.cmd("Cmd wget -O LICENSE https://raw.githubusercontent.com/licenses/license-templates/refs/heads/master/templates/" .. template .. ".txt")
end

local function cmd(args)
    local arg = 'term'

    v.cmd.new()
    v.cmd.wincmd("J")

    if (args['args']) then
        arg = arg .. ' ' .. args['args']
    end

    if (#arg == 5) then
        v.cmd("startinsert")
    end

    v.cmd("resize -15<CR>")

    v.cmd(arg)
end

local function todo()
--     local buf = v.api.nvim_buf_get_name(0)
--     print(buf)
--
--     if buf > "" then
--         v.cmd.vnew()
--         v.cmd.wincmd("L")
--     end
    local buf = v.api.nvim_create_buf(false, true)

    local width = math.floor(v.o.columns * 0.4)
    local height = math.floor(v.o.lines * 0.6)

    local opts = {
        title = "Todo",
        title_pos = "center",
        relative = "editor",
        width = width,
        height = height,
        col = math.floor((v.o.columns - width)  / 2),
        row = math.floor((v.o.lines - height)  / 2),
        border = "solid",
    }

    local win = v.api.nvim_open_win(0, 0, opts)

    v.cmd("e ~/links.md")

    return { buf = buf, win = win }
end

v.api.nvim_create_user_command('Cmd', cmd, { nargs = "*" })
v.api.nvim_create_user_command('C', cmd, { nargs = "*" })
v.api.nvim_create_user_command('Tree', ':Cmd tree --gitignore', { nargs = "*" })
v.api.nvim_create_user_command('License', get_licenses, { nargs = "*"})
v.api.nvim_create_user_command('Td', todo, {})

-- v.api.nvim_create_user_command('Man', function (d)
--     local args = d.fargs
--     v.cmd("Cmd man " .. args[1])
-- end, { nargs="*" })
