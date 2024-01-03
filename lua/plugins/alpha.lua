local headers = {
    {
        "                                                     ",
        "  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
        "  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
        "  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
        "  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
        "  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
        "  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
        "                                                     ",
    },

    {
        [[                               __                ]],
        [[  ___     ___    ___   __  __ /\_\    ___ ___    ]],
        [[ / _ `\  / __`\ / __`\/\ \/\ \\/\ \  / __` __`\  ]],
        [[/\ \/\ \/\  __//\ \_\ \ \ \_/ |\ \ \/\ \/\ \/\ \ ]],
        [[\ \_\ \_\ \____\ \____/\ \___/  \ \_\ \_\ \_\ \_\]],
        [[ \/_/\/_/\/____/\/___/  \/__/    \/_/\/_/\/_/\/_/]],
    },
    {
        "                ⬛                ",
        "              ⬛🟨⬛              ",
        "              ⬛🟨⬛              ",
        "            ⬛🟨🟨🟨⬛            ",
        "            ⬛🟨🟨🟨⬛            ",
        "          ⬛🟨🟨🟨🟨🟨⬛          ",
        "          ⬛🟨🟨🟨🟨🟨⬛          ",
        "        ⬛🟨🟨🟨🟨🟨🟨🟨⬛        ",
        "        ⬛⬛⬛⬛⬛⬛⬛⬛⬛        ",
        "      ⬛🟨⬛          ⬛🟨⬛      ",
        "      ⬛🟨⬛          ⬛🟨⬛      ",
        "    ⬛🟨🟨🟨⬛      ⬛🟨🟨🟨⬛    ",
        "    ⬛🟨🟨🟨⬛      ⬛🟨🟨🟨⬛    ",
        "  ⬛🟨🟨🟨🟨🟨⬛  ⬛🟨🟨🟨🟨🟨⬛  ",
        "  ⬛🟨🟨🟨🟨🟨⬛  ⬛🟨🟨🟨🟨🟨⬛  ",
        "⬛🟨🟨🟨🟨🟨🟨🟨⬛🟨🟨🟨🟨🟨🟨🟨⬛",
        "⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛",
    },
    {
        "                    ",
        " ▄▀▄▀▀▀▀▄▀▄         ",
        " █        ▀▄      ▄ ",
        "█  ▀  ▀     ▀▄▄  █ █",
        "█ ▄ █▀ ▄       ▀▀  █",
        "█  ▀▀▀▀            █",
        "█                  █",
        "█                  █",
        " █  ▄▄  ▄▄▄▄  ▄▄  █ ",
        " █ ▄▀█ ▄▀  █ ▄▀█ ▄▀ ",
        "  ▀   ▀     ▀   ▀   ",
    },
    {
        " _______________________________________ ",
        "|  | | | |  |  | | | | | |  |  | | | |  |",
        "|  | | | |  |  | | | | | |  |  | | | |  |",
        "|  | | | |  |  | | | | | |  |  | | | |  |",
        "|  |_| |_|  |  |_| |_| |_|  |  |_| |_|  |",
        "|   |   |   |   |   |   |   |   |   |   |",
        "|   |   |   |   |   |   |   |   |   |   |",
        "|___|___|___|___|___|___|___|___|___|___|",
    }
}


return {
    -- dashboard
    'goolord/alpha-nvim',

    dependencies = {
        "nvim-tree/nvim-web-devicons"
    },

    config = function()
        local alpha = require 'alpha'

        local dashboard = require "alpha.themes.dashboard"

        dashboard.section.header.val = headers[math.random(#headers)]

        dashboard.section.buttons.val = {
            dashboard.button("e", "  New file", "<cmd>ene <CR>"),
            dashboard.button("f", "󰈞  Find file", ":cd $HOME/repos | Telescope find_files<CR>"),
            dashboard.button("w", "󰊄  Find file in workspace", ":Telescope find_files<CR>"),
            dashboard.button("r", "  Recently opened files", ":Telescope oldfiles<CR>"),
            dashboard.button("o", "󰎛 notes", ":e ~/notes/ | :cd %:p:h | wincmd | pwd <cr>");
            -- dashboard.button("SPC f  m", "  Jump to bookmarks"),
            dashboard.button("s", "  Settings", ":e $MYVIMRC | :cd %:p:h | wincmd k | pwd<CR>"),
            dashboard.button("q", "  Quit NVIM", ":qa<CR>"),
        }

        dashboard.section.footer.val = {
            "If debugging is the process of removing software bugs,",
            "thes programming must be the process of putting them in.",
            "",
            "– Edsger Dijkstra"
        }

        alpha.setup(dashboard.opts)
    end
}
