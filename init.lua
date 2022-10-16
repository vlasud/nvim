require('packer-plugins')

-- Editor
vim.o.number = true
vim.o.numberwidth = 2
vim.o.cursorline = true
vim.g.blamer_enabled = 1
vim.cmd[[colorscheme dracula]]

-- Editing
vim.o.expandtab = true
vim.o.smarttab = true
vim.o.autoident = true
vim.o.tabstop = 2
vim.o.shiftwidth = 2

-- Binding
local keymap = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }
local builtin = require('telescope.builtin')

vim.keymap.set('n', 'ff', builtin.find_files, {})
vim.keymap.set('n', 'fg', builtin.live_grep, {})
vim.keymap.set('n', 'fb', builtin.buffers, {})
vim.keymap.set('n', 'fh', builtin.help_tags, {})

keymap("n", "<Left>", ":vertical resize +1<CR>", default_opts)
keymap("n", "<Right>", ":vertical resize -1<CR>", default_opts)
keymap("n", "<Up>", ":resize -1<CR>", default_opts)
keymap("n", "<Down>", ":resize +1<CR>", default_opts)
keymap("n", "<S-t>", ":NERDTree<CR>", default_opts)
keymap("n", "<S-h>", "<C-W>h", default_opts)
keymap("n", "<S-j>", "<C-W>j", default_opts)
keymap("n", "<S-k>", "<C-W>k", default_opts)
keymap("n", "<S-l>", "<C-W>l", default_opts)
keymap("n", "<Esc><Esc>", "<Esc>:w<CR>", default_opts)
keymap("n", "<S-q>", "<Esc>:q!<CR>", default_opts)

-- Mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
local opts = { noremap=true, silent=true }
vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, opts)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist, opts)
