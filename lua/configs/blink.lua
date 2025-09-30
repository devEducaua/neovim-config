
return function()
    require("blink.cmp").setup({
        snippets = { preset = "luasnip" },
        sources = {
            default = { "lsp", "path", "snippets", "buffer" }
        },

        keymap = {
            ['<CR>'] = { 'select_and_accept', 'fallback' },
            ['<S-Tab>'] = { 'select_prev', 'fallback' },
            ['<Tab>'] = { 'select_next', 'fallback' },
        },

        completion = { documentation = { auto_show = true }},
        fuzzy = { implementation = "lua" }
    })
end
