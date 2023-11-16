-- Set highlight on search
vim.o.hlsearch = false

-- Make line numbers default
vim.opt.number = true
vim.opt.relativenumber = true

-- cuando se divide la pantalla horizontalmente se hacie por abajo
-- cuando se divide la pantalla verticalmente se hacie hacia la derecha
vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.wrap = false

-- los tabs se dividen en espacios y son de 4 espacios
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

vim.opt.scrolloff = 15

-- Enable mouse mode
vim.o.mouse = 'a'

-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.o.clipboard = 'unnamedplus'

-- Enable break indent
vim.o.breakindent = true

-- Save undo history
vim.o.undofile = true

-- cuando se entra en v mode, se cuando se edita en bloque se mantiene la forma del cuadrado
vim.opt.virtualedit = "block"

-- Cuando se va a sustituir palabra, aparece una ventana
vim.opt.inccommand = "split"

-- Case-insensitive searching UNLESS \C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Keep signcolumn on by default
vim.wo.signcolumn = 'yes'

-- Decrease update time
vim.o.updatetime = 250
vim.o.timeoutlen = 300

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'

-- NOTE: You should make sure your terminal supports this
vim.o.termguicolors = true
