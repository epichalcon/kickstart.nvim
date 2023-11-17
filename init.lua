vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

require("custom.lazy")
require("custom.options")
require("custom.keymaps")
require("custom.config.LSP")
require("custom.config.utils")

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
