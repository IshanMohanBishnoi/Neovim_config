return {
  "goolord/alpha-nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },

  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.startify")

    -- HEADER
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

    dashboard.section.header.opts = {
      position = "center",
    }

    dashboard.section.bottom_buttons.val = {
        {
            type = "button",
            val = "hare kṛṣṇa hare kṛṣṇa kṛṣṇa kṛṣṇa hare hare",
            opts = {
                position = "center",
                keymap = false,
            },
        },

        {
            type = "button",
            val = "hare rāma hare rāma rāma rāma hare hare",
            opts = {
                position = "center",
                keymap = false,
            },
        },

    }
    -- CUSTOM TEXT USING bottom_buttons (Startify-safe)

    dashboard.section.bottom_buttons.opts = {
      position = "center",
    }

    dashboard.config.layout = {
        dashboard.section.header,
        dashboard.section.bottom_buttons, -- ← moved up
    }

    alpha.setup(dashboard.opts)
  end,
}


