return function ()
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
