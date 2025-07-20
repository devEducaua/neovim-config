local mydark = {
    normal = {
        a = { fg = '#dddddd', bg = '#000000', gui = 'bold' },
        b = { fg = '#777777', bg = '#000000' },
        c = { fg = '#777777', bg = '#000000' },
    },
    insert = {
        a = { fg = '#dddddd', bg = '#000000', gui = 'bold' },
        b = { fg = '#777777', bg = '#000000' },
        c = { fg = '#777777', bg = '#000000' },
    },
    visual = {
        a = { fg = '#dddddd', bg = '#000000', gui = 'bold' },
        b = { fg = '#777777', bg = '#000000' },
        c = { fg = '#777777', bg = '#000000' },
    },
    replace = {
        a = { fg = '#dddddd', bg = '#000000', gui = 'bold' },
        b = { fg = '#777777', bg = '#000000' },
        c = { fg = '#777777', bg = '#000000' },
    },
    command = {
        a = { fg = '#dddddd', bg = '#000000', gui = 'bold' },
        b = { fg = '#777777', bg = '#000000' },
        c = { fg = '#777777', bg = '#000000' },
    },
    inactive = {
        a = { fg = '#777777', bg = '#000000', gui = 'bold' },
        b = { fg = '#777777', bg = '#000000' },
        c = { fg = '#777777', bg = '#000000' },
    },
}

return function ()
    require('lualine').setup {
            options = {
                theme = mydark,
                icons_enable = true,
                globalstatus = true,
                always_divide_middle = true,
                disabled_filetypes = {
                      statusline = {},
                      winbar = {},
                },
                ignore_focus = {}
            },
            sections = {
                lualine_a = {'mode'},
                lualine_b = {'branch'},
                lualine_c = {'filename'},
                lualine_x = {'fileformat', 'filetype'},
                lualine_y = {'progress'},
                lualine_z = {}
              }
        }
end
