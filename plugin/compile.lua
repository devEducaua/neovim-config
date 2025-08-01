local function getPath(file)
    local dir = require("oil").get_current_dir(vim.api.nvim_get_current_buf())
    local temp_path = dir .. "/" .. file
    local full_path = string.gsub(temp_path, "//", "/")

    local pwd = vim.fn.getcwd()
    local local_path = string.gsub(full_path, pwd .. "/", "")

    return local_path
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

    file = getPath(file)

    local cmd = ""

    -- C
    if (ext == '.c') then
        cmd = "gcc " .. file .. " -o " .. string.gsub(file, ".c", "")

    -- Haskell
    elseif (ext == '.hs') then
        cmd = "ghc " .. file .. " -o " .. string.gsub(file, ".hs", "")

    -- Kotlin
    elseif (ext == '.kt') then
        cmd = "kotlinc " .. file " -include-runtime " .. "-d " .. string.gsub(file, ".kt", "") .. ".jar"
            --
    -- Python
    elseif (ext == '.py') then
        cmd = "python3 " .. file

    -- Lua
    elseif (ext == '.lua') then
        cmd = "lua " .. file

    -- Php
    elseif (ext == '.php') then
        cmd = "php " .. file

    -- Rust
    elseif (ext == '.rs') then
        cmd = "cargo build"

    -- Java
    elseif (ext == '.java') then
        cmd = "javac " .. file

    elseif (ext == '.md') then
        cmd = "glow " .. file

    else
        print("Unknown format")
    end

    vim.cmd("Cmd " .. cmd)

end, { nargs="*" })
