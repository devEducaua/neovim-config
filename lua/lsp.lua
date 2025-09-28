vim.api.nvim_create_autocmd('LspAttach', {
    callback = function(args)
        vim.keymap.set("n", "gli", vim.lsp.buf.implementation, { buffer = args.buf })
        vim.keymap.set({"n", "v", "x"}, "gbf", vim.lsp.buf.format , {})
    end
})

vim.lsp.config["luals"] = {
    cmd = { "lua-language-server" },
    filetypes = { "lua" },
    root_markers = { "stylua.json", ".luarc.json", ".git" },
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim', 'love' }
            },
            workspace = {
                library = {
                    vim.env.VIMRUNTIME
                }
            }
        }
    }
}

vim.lsp.config["ts_ls"] = {
    cmd = { "typescript-language-server", "--stdio" },
    filetypes = { "typescript" },
    root_markers = { "node_modules/", "package.json", ".git" }
}

vim.lsp.config["clangd"] = {
    cmd = { "clangd" },
    filetypes = { "c", "cpp" },
    root_markers = { "Makefile", ".git" }
}

vim.lsp.config["bashls"] = {
    cmd = { "bash-language-server" },
    filetypes = { "sh" }
}

local servers = { "luals", "ts_ls", "clangd", "bashls" }

vim.lsp.enable(servers)
