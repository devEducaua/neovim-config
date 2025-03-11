return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
  },
  config = function()
    require("mason-lspconfig").setup({
      ensure_installed = { "lua_ls", "ts_ls", "clangd" }, -- Adicione os LSPs que quiser
      automatic_installation = true,
    })

    local lspconfig = require("lspconfig")

    -- Configuração para cada LSP instalado
    local servers = { "lua_ls", "ts_ls", "clangd", "svelte", "cssls" }

    for _, server in ipairs(servers) do
      lspconfig[server].setup({})
    end
  end
}

