return function ()
    require("mason-lspconfig").setup({
      ensure_installed = { "lua_ls", "ts_ls", "clangd" },
      automatic_installation = true,
    })

    local lspconfig = require("lspconfig")

    local servers = { "lua_ls", "pyright","hls", "bashls" , "gopls" , "jdtls", "prismals","somesass_ls", "ts_ls", "rust_analyzer", "clangd","texlab","svelte", "cssls", "html", "tailwindcss" }

    for _, server in ipairs(servers) do
      lspconfig[server].setup({})
    end
end
