return function ()
    require("nvim-treesitter.configs").setup({
      ensure_installed = { "c", "lua", "javascript", "astro", "markdown" },
      sync_install = false,
      auto_install = false,
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
      indent = {
        enable = true,
      },
    })
end
