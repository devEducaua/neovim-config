return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },

    config = function()
        local mydark = {
              normal = {
                a = { fg = '#dddddd', bg = '#0c0c0c', gui = 'bold' },
                b = { fg = '#777777', bg = '#0c0c0c' },
                c = { fg = '#777777', bg = '#0c0c0c' },
              },
              insert = {
                a = { fg = '#dddddd', bg = '#0c0c0c', gui = 'bold' },
                b = { fg = '#777777', bg = '#0c0c0c' },
                c = { fg = '#777777', bg = '#0c0c0c' },
              },
              visual = {
                a = { fg = '#dddddd', bg = '#0c0c0c', gui = 'bold' },
                b = { fg = '#777777', bg = '#0c0c0c' },
                c = { fg = '#777777', bg = '#0c0c0c' },
              },
              replace = {
                a = { fg = '#dddddd', bg = '#0c0c0c', gui = 'bold' },
                b = { fg = '#777777', bg = '#0c0c0c' },
                c = { fg = '#777777', bg = '#0c0c0c' },
              },
              command = {
                a = { fg = '#dddddd', bg = '#0c0c0c', gui = 'bold' },
                b = { fg = '#777777', bg = '#0c0c0c' },
                c = { fg = '#777777', bg = '#0c0c0c' },
              },
              inactive = {
                a = { fg = '#777777', bg = '#0c0c0c', gui = 'bold' },
                b = { fg = '#777777', bg = '#0c0c0c' },
                c = { fg = '#777777', bg = '#0c0c0c' },
              },
            }
        require('lualine').setup({
            options = {
                theme = mydark,  -- Escolha o tema que preferir
                section_separators = {'', ''},
                component_separators = {'', ''},
            },
            sections = {
                lualine_a = {'mode'},
                lualine_b = {'branch', 'diff', 'diagnostics'},
                lualine_c = {'filename'},
                lualine_x = {'filetype'},
                lualine_y = {'filesize'},
                lualine_z = {},
            },
            extensions = {'fugitive', 'nvim-tree'}
        })
    end
}
