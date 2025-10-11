local function bootstrap_pckr()
    local pckr_path = vim.fn.stdpath("data") .. "/pckr/pckr.nvim"
    --print(pckr_path)
  
    if not (vim.uv or vim.loop).fs_stat(pckr_path) then
        vim.fn.system({
            'git',
            'clone',
            "--filter=blob:none",
            'https://github.com/lewis6991/pckr.nvim',
            pckr_path
        })
    end
  
    vim.opt.rtp:prepend(pckr_path)
end

bootstrap_pckr()

local pckr = require("pckr")

pckr.add{
    "~/proj/oradark.nvim",

    "windwp/nvim-autopairs",
    "numToStr/Comment.nvim",

    {
        "L3MON4D3/LuaSnip",
        config = require("configs.luasnip")
    },

    {
        "saghen/blink.cmp",
        requires = { "rafamadriz/friendly-snippets" },
        config = function ()
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
    },

    {
        "stevearc/oil.nvim",
        ---@module 'oil'
        ---@type oil.SetupOpts
        requires = { "nvim-tree/nvim-web-devicons" },
        config = require("configs.oil")
    },

    {
        "nvim-telescope/telescope.nvim",
        requires = { 'nvim-lua/plenary.nvim' },
        config = function ()
            require("telescope").setup({
                file_ignore_patterns = { "^node_modules/" },
                defaults = {
                    border = false,
                    prompt_position = "bottom",
                    layout_strategy = 'bottom_pane',
                    sorting_strategy = 'ascending',
                    results_title = false,
                    layout_config = {
                        width = 1,
                        height = 0.15,
                        preview_width = 0
                    },
                }
            })
        end
    },

    {
        "williamboman/mason.nvim",
        config = function()
	    require("mason").setup()
	end
    },

    {
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate",
        config = function ()
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
    }
}
