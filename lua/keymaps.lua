-- [[ Basic Keymaps ]]

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>qf', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })

-- Move to window using <ctrl> hjkl
-- vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Go to left window", remap = true })
-- vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Go to lower window", remap = true })
-- vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Go to upper window", remap = true })
-- vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Go to right window", remap = true })

vim.keymap.set("n", "<C-h>", "<cmd> TmuxNavigateLeft<cr>", { desc = "Go to left window", remap = true })
vim.keymap.set("n", "<C-l>", "<cmd> TmuxNavigateRight<cr>", { desc = "Go to right window", remap = true })
vim.keymap.set("n", "<C-j>", "<cmd> TmuxNavigateDown<cr>", { desc = "Go to lower window", remap = true })
vim.keymap.set("n", "<C-k>", "<cmd> TmuxNavigateUp<cr>", { desc = "Go to upper window", remap = true })

-- resize window using <ctrl> arrow keys
vim.keymap.set("n", "<c-up>", "<cmd>resize +2<cr>", { desc = "increase window height" })
vim.keymap.set("n", "<c-down>", "<cmd>resize -2<cr>", { desc = "decrease window height" })
vim.keymap.set("n", "<c-left>", "<cmd>vertical resize -2<cr>", { desc = "decrease window width" })
vim.keymap.set("n", "<c-right>", "<cmd>vertical resize +2<cr>", { desc = "increase window width" })

-- move lines
vim.keymap.set("n", "<a-j>", "<cmd>m .+1<cr>==", { desc = "move down" })
vim.keymap.set("n", "<a-k>", "<cmd>m .-2<cr>==", { desc = "move up" })
vim.keymap.set("i", "<a-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "move down" })
vim.keymap.set("i", "<a-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "move up" })
vim.keymap.set("v", "<a-j>", ":m '>+1<cr>gv=gv", { desc = "move down" })
vim.keymap.set("v", "<a-k>", ":m '<-2<cr>gv=gv", { desc = "move up" })


-- The primeagen keymaps https://www.youtube.com/watch?v=w7i4amO_zaE&t=1104s
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz");
vim.keymap.set("n", "<C-u>", "<C-u>zz");


vim.keymap.set("x", "<leader>p", "\"_dP");

vim.keymap.set("n", "<leader>d", "\"_d");
vim.keymap.set("v", "<leader>d", "\"_d");

-- buffers
vim.keymap.set("n", "<s-h>", "<cmd>bprevious<cr>", { desc = "prev buffer" })
vim.keymap.set("n", "<s-l>", "<cmd>bnext<cr>", { desc = "next buffer" })
vim.keymap.set("n", "<leader>bb", "<cmd>e #<cr>", { desc = "switch to other buffer" })
vim.keymap.set("n", "<leader>bd", "<cmd>bd<cr>", { desc = "delete current buffer" })

-- save file
vim.keymap.set({ "x", "n", "s" }, "<C-s>", "<cmd>w<cr><esc>", { desc = "Save file" })
vim.keymap.set({ "x", "n", "s" }, "<leader>ww", "<cmd>w<cr><esc>zz", { desc = "Save file" })

-- better indenting
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- quit
vim.keymap.set("n", "<leader>qq", "<cmd>qa<cr>", { desc = "Quit all" })
vim.keymap.set("n", "<leader>wq", "<cmd>wq<cr>", { desc = "Save and quit" })

-- activate neo-tree
vim.keymap.set('n', '<leader>e', function()
        local reveal_file = vim.fn.expand('%:p')
        if (reveal_file == '') then
            reveal_file = vim.fn.getcwd()
        else
            local f = io.open(reveal_file, "r")
            if (f) then
                f.close(f)
            else
                reveal_file = vim.fn.getcwd()
            end
        end
        require('neo-tree.command').execute({
            action = "focus",          -- OPTIONAL, this is the default value
            source = "filesystem",     -- OPTIONAL, this is the default value
            position = "left",         -- OPTIONAL, this is the default value
            reveal_file = reveal_file, -- path to file or folder to reveal
            reveal_force_cwd = true,   -- change cwd without asking if needed
            toggle = true,
        })
    end,
    { desc = "Open neo-tree at current file or working directory" }
);


-- [[ Telescope ]]
-- See `:help telescope.builtin`
vim.keymap.set('n', '<leader>?', require('telescope.builtin').oldfiles, { desc = '[?] Find recently opened files' })
vim.keymap.set('n', '<leader><space>', require('telescope.builtin').buffers, { desc = '[ ] Find existing buffers' })
vim.keymap.set('n', '<leader>/', function()
    -- You can pass additional configuration to telescope to change theme, layout, etc.
    require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
        winblend = 10,
        previewer = false,
    })
end, { desc = '[/] Fuzzily search in current buffer' })

vim.keymap.set('n', '<leader>gf', require('telescope.builtin').git_files, { desc = 'Search [G]it [F]iles' })
vim.keymap.set('n', '<leader>sf', require('telescope.builtin').find_files, { desc = '[S]earch [F]iles' })
vim.keymap.set('n', '<leader>sh', require('telescope.builtin').help_tags, { desc = '[S]earch [H]elp' })
vim.keymap.set('n', '<leader>sw', require('telescope.builtin').grep_string, { desc = '[S]earch current [W]ord' })
vim.keymap.set('n', '<leader>sg', require('telescope.builtin').live_grep, { desc = '[S]earch by [G]rep' })
vim.keymap.set('n', '<leader>sG', ':LiveGrepGitRoot<cr>', { desc = '[S]earch by [G]rep on Git Root' })
vim.keymap.set('n', '<leader>sd', require('telescope.builtin').diagnostics, { desc = '[S]earch [D]iagnostics' })
vim.keymap.set('n', '<leader>sr', require('telescope.builtin').resume, { desc = '[S]earch [R]esume' })

vim.keymap.set('n', '<leader>gg', ':LazyGit<cr>', { desc = 'Open lazy git window' })






local dap = require "dap"
local dapui = require 'dapui'
-- Basic debugging keymaps, feel free to change to your liking!
vim.keymap.set('n', '<leader>dc', dap.continue, { desc = 'Debug: Start/Continue' })
vim.keymap.set('n', '<leader>di', dap.step_into, { desc = 'Debug: Step Into' })
vim.keymap.set('n', '<leader>do', dap.step_over, { desc = 'Debug: Step Over' })
vim.keymap.set('n', '<leader>du', dap.step_out, { desc = 'Debug: Step Out' })
vim.keymap.set('n', '<leader>db', dap.toggle_breakpoint, { desc = 'Debug: Toggle Breakpoint' })
vim.keymap.set('n', '<leader>B', function()
    dap.set_breakpoint(vim.fn.input 'Breakpoint condition: ')
end, { desc = 'Debug: Set Breakpoint' })
-- Toggle to see last session result. Without this, you can't see session output in case of unhandled exception.
vim.keymap.set('n', '<F7>', dapui.toggle, { desc = 'Debug: See last session result.' })



-- document existing key chains
local wk = require "which-key"

wk.register({
    ['<leader>c'] = { name = '[C]ode', _ = 'which_key_ignore' },
    ['<leader>d'] = { name = '[D]ebug', _ = 'which_key_ignore' },
    ['<leader>g'] = { name = '[G]it', _ = 'which_key_ignore' },
    ['<leader>h'] = { name = 'More git', _ = 'which_key_ignore' },
    ['<leader>r'] = { name = '[R]ename', _ = 'which_key_ignore' },
    ['<leader>s'] = { name = '[S]earch', _ = 'which_key_ignore' },
    ['<leader>w'] = { name = '[W]orkspace', _ = 'which_key_ignore' },
    ['<leader>b'] = { name = '[B]uffer', _ = 'which_key_ignore' },
    ['<leader>f'] = { name = '[F]ile', _ = 'which_key_ignore' },
})
