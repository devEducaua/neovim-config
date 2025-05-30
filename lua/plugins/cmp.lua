return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",  -- Autocompletar com LSP
    "hrsh7th/cmp-buffer",     -- Autocompletar buffer
    "hrsh7th/cmp-path",       -- Autocompletar caminhos
    "L3MON4D3/LuaSnip",       -- Snippets
  },
  config = function()
    local cmp = require("cmp")

    cmp.setup({
      snippets = {
        expand = function(args)
            luasnip.lsp_expand(args.body)
        end,
      },
      mapping = cmp.mapping.preset.insert({
        ["<Tab>"] = cmp.mapping.select_next_item(),
        ["<S-Tab>"] = cmp.mapping.select_prev_item(),
        ["<CR>"] = cmp.mapping.confirm({ select = true }),
        ['<C-Space>'] = cmp.mapping.complete(),
     }),
      sources = cmp.config.sources({
        { name = "nvim_lsp" },
        { name = "buffer" },
        { name = "path" },
      }),
    })
  end,
}

