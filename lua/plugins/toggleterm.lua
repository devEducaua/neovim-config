return {
    'akinsho/toggleterm.nvim', version = "*", config = true,
    config = function()
        require('toggleterm').setup{
            size = 15, 
            open_mapping = [[<A-\>]],  -- Mapeamento de teclado para abrir/fechar o terminal
            direction = "float",     
            float_opts = {
                height = 40,
                width = 180,
                col = 6,
                row = 2,
                border = "rounded",
            },
            hightlights = {
                Normal = {
                    guibg = 'none'
                },
                NormalFloat = {
                    link = 'Normal'
                }
            }
        }
    end,
}

