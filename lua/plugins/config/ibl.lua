return function ()
    require("ibl").setup {
        indent = {
            char = "│",
        },
        scope = {
            enabled = false,
        },
        whitespace = {
            remove_blankline_trail = true,
        },
        exclude = {
            filetypes = { "help", "terminal", "lazy", "lspinfo" },
            buftypes = { "terminal", "nofile" },
        },
    }

    vim.cmd [[ highlight IndentBlanklineChar guifg=#222222 ]]
end
