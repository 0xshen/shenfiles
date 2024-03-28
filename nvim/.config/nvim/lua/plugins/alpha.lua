return {
  "goolord/alpha-nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },

  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")
    dashboard.section.buttons.val = {
    dashboard.button( "e", "🗃️ > New file" , ":ene <BAR> startinsert <CR>"),
    dashboard.button( "f", "🔎 > Find files", ":cd $HOME/Documents/0xshen |  Telescope find_files  <CR>"),
    dashboard.button( "r", "👀 > Recent files"   , ":Telescope oldfiles<CR>"),
    dashboard.button( "s", "🛠️ > Settings" , ":cd $HOME/.config/nvim | Telescope find_files<CR>"),
    dashboard.button( "q", "🛑 > Quit", ":qa<CR>"),
    }
    dashboard.section.header.val = {
      [[                                                                       ]],
      [[                                                                       ]],
      [[                                                                       ]],
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
      [[                                                                       ]],
      [[                                                                       ]],
    }

    alpha.setup(dashboard.opts)
  end,
}
