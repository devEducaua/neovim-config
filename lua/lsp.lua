local servers = { "luals", "ts_ls", "clangd", "bashls", "astro-language-server", "gopls", "cssls", "html" }

vim.api.nvim_create_autocmd('LspAttach', {
    callback = function(args)
        local client = assert(vim.lsp.get_client_by_id(args.data.client_id))
        if client:supports_method('textDocument/implementation') then
            vim.keymap.set("n", "gli", vim.lsp.buf.implementation, { buffer = args.buf })
        end

         -- if client:supports_method('textDocument/completion') then
         --     vim.opt.completeopt = { 'menu', 'menuone', 'noinsert', 'fuzzy', 'popup' }
         --     vim.lsp.completion.enable(true, client.id, args.buf, { autotrigger = true })
         --
         --     vim.keymap.set('i', '<c-space>', function()
         --         vim.lsp.completion.get()
         --     end)
         -- end

        vim.keymap.set({ "n", "v", "x" }, "gbf", vim.lsp.buf.format, {})
    end
})

-- vim.lsp.util.open_floating_preview({}, "", {
--     width = 1,
--     height = 1,
--     border = "rounded"
-- })

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

vim.lsp.config["astro-language-server"] = {
    cmd = { "astro-language-server" },
    filetypes = { "astro" },
    root_markers = { "astro.config.mjs" }
}

vim.lsp.config["ts_ls"] = {
    cmd = { "typescript-language-server", "--stdio" },
    filetypes = { "typescript", "javascript" },
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

vim.lsp.config["gopls"] = {
    cmd = { "gopls" },
    filetypes = { "go", "gomod" },
    root_markers = { "go.mod" }
}

vim.lsp.config["cssls"] = {
    cmd = { "vscode-css-language-server", "--stdio" },
    filetypes = { "css", "scss", "less" },
    root_markers = { "package.json", ".git" }
}

vim.lsp.config["html"] = {
    cmd = { "vscode-html-language-server", "--stdio" },
    filetypes = { "html", "astro" },
    root_markers = { ".git" }
}

vim.lsp.enable(servers)
for _, s in ipairs(servers) do
    vim.lsp.config[s].capabilities = capabilities
end
