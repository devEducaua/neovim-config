return {
    'akinsho/toggleterm.nvim', version = "*", config = true,
    config = function()
        require('toggleterm').setup{
            size = 15, 
            open_mapping = [[<c-\>]],  -- Mapeamento de teclado para abrir/fechar o terminal
            direction = "float",     
            float_opts = {
                height = 40,
                width = 150,
                col = 5,
                row = 2,
                border = "rounded",
            }
        }
    end,
}

