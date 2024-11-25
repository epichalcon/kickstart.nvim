return {

    'tpope/vim-sleuth',
    -- Useful plugin to show you pending keybinds.
    {
        'folke/which-key.nvim',
        opts = {
        },
    },

    -- añade barra de bufferes
    {
        'akinsho/bufferline.nvim',
        version = "*",
        dependencies = 'nvim-tree/nvim-web-devicons',
        opts = {
        },
    },

    -- añade popups
    {
        "folke/noice.nvim",
        event = "VeryLazy",
        dependencies = {
            "MunifTanjim/nui.nvim",
            "rcarriga/nvim-notify",
        },

        config = function()
            require 'noice'.setup({
                presets = {
                    bottom_search = true,         -- use a classic bottom cmdline for search
                    command_palette = true,       -- position the cmdline and popupmenu together
                    long_message_to_split = true, -- long messages will be sent to a split
                    inc_rename = false,           -- enables an input dialog for inc-rename.nvim
                },

            })
        end
    },

    {
        -- Barra de abajo
        'nvim-lualine/lualine.nvim',
        config = function()
            require 'lualine'.setup({
                options = {
                    icons_enabled = true,
                    theme = 'auto',
                    -- component_separators = '|',
                    -- section_separators = '',
                    component_separators = { left = '', right = '' },
                    section_separators = { left = '', right = '' },
                }
            })
        end
    },


}
