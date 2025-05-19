return {
    'goolord/alpha-nvim',
    config = function()
      local alpha = require('alpha')
      local dashboard = require('alpha.themes.dashboard')

      dashboard.section.header.val = {
          [[                                                                       ]],
	[[                                                                     ]],
	[[       ████ ██████           █████      ██                     ]],
	[[      ███████████             █████                             ]],
	[[      █████████ ███████████████████ ███   ███████████   ]],
	[[     █████████  ███    █████████████ █████ ██████████████   ]],
	[[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
	[[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
	[[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
	[[                                                                       ]],
      }

      dashboard.section.buttons.val = {
            dashboard.button("b", "  NeoTree", ":Neotree reveal<CR>"),
            dashboard.button("l", "  Lazy", ":Lazy<CR>"),
            dashboard.button("f", "  Find file", ":Telescope find_files<CR>"),
            dashboard.button("n", "  New file", ":ene <BAR> startinsert <CR>"),
            dashboard.button("r", "  Recent files", ":Telescope oldfiles<CR>"),
            dashboard.button("q", "  Quit", ":qa<CR>"),
      }

      alpha.setup(dashboard.config)
    end
}

