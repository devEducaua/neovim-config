return function ()
    require('toggleterm').setup{
            size = 15,
            open_mapping = [[<A-\>]],  -- Mapeamento de teclado para abrir/fechar o terminal
            direction = "float",
            float_opts = {
                height = 40,
                width = 140,
                col = 40,
                row = 2,
                border = "curved",
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
end
