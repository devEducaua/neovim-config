return {
  "vague2k/vague.nvim",
  config = function()
    -- NOTE: you do not need to call setup if you don't want to.
    require("vague").setup({
        vim.cmd("colorscheme vague")
    })
  end
}



-- return {
-- 	'kdheepak/monochrome.nvim', 
-- 	config = function()
--         priorify = 1000,
-- 		vim.cmd 'colorscheme monochrome'
-- 	end,
-- }
