return {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
        style = "storm",
    },
    config = function()
        vim.cmd.colorscheme 'tokyonight'
    end,
}
--   -- Theme inspired by Atom
--   'navarasu/onedark.nvim',
--   priority = 1001,
--   config = function()
--     vim.cmd.colorscheme 'onedark'
--   end,
-- },
