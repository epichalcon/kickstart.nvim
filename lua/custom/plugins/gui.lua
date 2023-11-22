return {

    -- añade popups
    {
        "folke/noice.nvim",
        event = "VeryLazy",
        opts = {

            presets = {
                bottom_search = true,         -- use a classic bottom cmdline for search
                command_palette = true,       -- position the cmdline and popupmenu together
                long_message_to_split = true, -- long messages will be sent to a split
                inc_rename = false,           -- enables an input dialog for inc-rename.nvim
            },
        },

        dependencies = {
            -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
            "MunifTanjim/nui.nvim",
            -- OPTIONAL:
            --   `nvim-notify` is only needed, if you want to use the notification view.
            --   If not available, we use `mini` as the fallback
            "rcarriga/nvim-notify",
        }
    },



    -- Lineas de indentacion
    {
        -- Add indentation guides even on blank lines
        'lukas-reineke/indent-blankline.nvim',
        -- Enable `lukas-reineke/indent-blankline.nvim`
        -- See `:help ibl`
        main = 'ibl',
        opts = {},
    },


    -- añade barra de bufferes
    {
        'akinsho/bufferline.nvim',
        version = "*",
        dependencies = 'nvim-tree/nvim-web-devicons',
        opts = {
        },
    },


    -- Barra de abajo
    {
        -- Set lualine as statusline
        'nvim-lualine/lualine.nvim',
        -- See `:help lualine.txt`
        opts = {
            options = {
                icons_enabled = true,
                theme = 'auto',
                -- component_separators = '|',
                -- section_separators = '',
                component_separators = { left = '', right = '' },
                section_separators = { left = '', right = '' },
            },
        },
    },



    -- Useful plugin to show you pending keybinds.
    {
        'folke/which-key.nvim',
        opts = {
        },
    },

    -- dashboard
    {
        'goolord/alpha-nvim',
        config = function()
            local alpha = require 'alpha'
            alpha.setup(require 'alpha.themes.dashboard'.config)

            local dashboard = require "alpha.themes.dashboard"

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


            dashboard.section.header.val = headers[math.random(#headers)]
            -- dashboard.section.header.val = headers[4]

            dashboard.section.buttons.val = {
                dashboard.button("e", "  New file", "<cmd>ene <CR>"),
                dashboard.button("f", "󰈞  Find file", ":cd $HOME/repos | Telescope find_files<CR>"),
                dashboard.button("r", "  Recently opened files", ":Telescope oldfiles<CR>"),
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
        end
    },
}
