local function getFullPath(file)
    local dir = require("oil").get_current_dir(vim.api.nvim_get_current_buf())
    local temp_path = dir .. "/" .. file
    local full_path = string.gsub(temp_path, "//", "/")
    string.gsub(full_path, "/home/edu/", "~/")
    return full_path
end

vim.api.nvim_create_user_command("Compile",
function (d)
    local args = d.fargs

    local file = args[1]

    if not file then
        local buf = vim.api.nvim_buf_get_name(vim.api.nvim_get_current_buf())
        vim.cmd("Compile " .. buf)
        return
    end

    local ext = file:match("%.[^%.]+$")

    -- C
    if (ext == '.c') then
        vim.cmd("Cmd gcc " .. file .. " -o " .. string.gsub(file, ".c", ""))

    -- Haskell
    elseif (ext == '.hs') then
        vim.cmd("Cmd ghc " .. file .. " -o " .. string.gsub(file, ".hs", ""))

    -- Kotlin
    elseif (ext == '.kt') then
        vim.cmd(":Cmd kotlinc " .. file " -include-runtime " .. "-d " .. string.gsub(file, ".kt", "") .. ".jar")
            --
    -- Python
    elseif (ext == '.py') then
        vim.cmd("Cmd python3 " .. file)

    -- Lua
    elseif (ext == '.lua') then
        vim.cmd("Cmd lua " .. file)

    -- Php
    elseif (ext == '.php') then
        vim.cmd("Cmd php " .. file)

    -- Rust
    elseif (ext == '.rs') then
        vim.cmd("Cmd cargo build")

    -- Java
    elseif (ext == '.java') then
        vim.cmd("Cmd javac " .. file)

    elseif (ext == '.md') then
        vim.cmd("Cmd glow " .. file)

    else
        print("Unknown format")
    end

end, { nargs="*" })
