return function ()
    require("nvim-treesitter.configs").setup({
      ensure_installed = { "c", "lua", "bash", "typescript", "html", "css", "javascript", "astro", "markdown", "go", "python" },
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
