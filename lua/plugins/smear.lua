return {
  "sphamba/smear-cursor.nvim",
    opts = {},

    config = function ()
        require("smear_cursor").setup({
            stiffness = 0.8,
            trailing_stiffness = 0.5,
            distance_stop_animation = 0.5
        })
    end
}
