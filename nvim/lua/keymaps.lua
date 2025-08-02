-- [[ Basic Keymaps ]]

-- Map <leader> key to <Space>
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Map Esc to double Control
vim.keymap.set("i", "jj", "<Esc>")

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Easy indent lines in visual mode with `v >`
vim.keymap.set("v", "<", "<gv", { desc = "Un-indent line" })
vim.keymap.set("v", ">", ">gv", { desc = "Indent line" })

-- Always go zz when doing Page up / Page down
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Centered search
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Copy to OS clipboard
vim.keymap.set("v", "<C-y>", '"+y<CR>', { silent = true })

-- Show diagnostic window
vim.keymap.set("n", "gh", vim.diagnostic.open_float, { desc = "Line Diagnostics" })

-- Paste without changing paste register
vim.keymap.set("x", "<C-p>", '"_dP')

-- Go to last buffer
vim.keymap.set("n", "<Tab>", "<cmd>b#<CR>", { desc = "Swith to last buffer" })

-- Delete buffer
vim.keymap.set("n", "<leader>d", "<cmd>bd<CR>", { desc = "Delete current buffer" })

-- Fast tab switching
vim.keymap.set("n", "<leader>1", "1gt", { desc = "Go to 1 tab" })
vim.keymap.set("n", "<leader>2", "2gt", { desc = "Go to 2 tab" })
vim.keymap.set("n", "<leader>3", "3gt", { desc = "Go to 3 tab" })
vim.keymap.set("n", "<leader>4", "4gt", { desc = "Go to 4 tab" })
vim.keymap.set("n", "<leader>5", "5gt", { desc = "Go to 5 tab" })
vim.keymap.set("n", "<leader>6", "6gt", { desc = "Go to 6 tab" })
vim.keymap.set("n", "<leader>7", "7gt", { desc = "Go to 7 tab" })
vim.keymap.set("n", "<leader>8", "8gt", { desc = "Go to 8 tab" })
vim.keymap.set("n", "<leader>9", "9gt", { desc = "Go to 9 tab" })
vim.keymap.set("n", "<leader>0", "<cmd>tablast<CR>", { desc = "Go to last tab" })

-- Diagnostic keymaps
-- vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
-- vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
-- vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
-- vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
-- vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

vim.keymap.set("n", "<C-h>", "<Cmd>NvimTmuxNavigateLeft<CR>", { desc = "Move focus to the left window", silent = true })
vim.keymap.set("n", "<C-j>", "<Cmd>NvimTmuxNavigateDown<CR>", { desc = "Move focus to the right window", silent = true })
vim.keymap.set("n", "<C-k>", "<Cmd>NvimTmuxNavigateUp<CR>", { desc = "Move focus to the lower window", silent = true })
vim.keymap.set("n", "<C-l>", "<Cmd>NvimTmuxNavigateRight<CR>", { desc = "Move focus to the upper window", silent = true })
