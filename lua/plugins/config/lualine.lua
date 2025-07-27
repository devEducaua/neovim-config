local dark = {
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

local function fileformattext()
  return [[POSIX]]
end

return function ()
    require('lualine').setup {
            options = {
                theme = dark,
                icons_enable = true,
                globalstatus = true,
                always_divide_middle = true,
                disabled_filetypes = {
                      statusline = {},
                      winbar = {},
                },
                component_separators = { left = '•', right = '•'},
                ignore_focus = {}
            },
            sections = {
                lualine_a = {'mode'},
                lualine_b = {'branch', 'diff', 'diagnostics'},
                lualine_c = {'filename'},
                lualine_x = { fileformattext, 'filetype'},
                lualine_y = {'location'},
                lualine_z = {}
              }
        }
end
