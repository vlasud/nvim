vim.g.mapleader = " "

local keymap = vim.keymap

-- use jk to exit insert mode
keymap.set({ "v", "i" }, "jj", "<ESC>")

-- saving
keymap.set('i', '<C-s>', '<Esc>:w<CR>')
keymap.set('n', '<C-s>', ':w<CR>')

-- quit
keymap.set('n', '<C-q>', ':x<CR>')
keymap.set('i', '<C-q>', '<Esc>:x<CR>')

-- navigate windows
keymap.set("n", "<C-j>", "<C-w>j")
keymap.set("n", "<C-h>", "<C-w>h")
keymap.set("n", "<C-k>", "<C-w>k")
keymap.set("n", "<C-l>", "<C-w>l")


-- shift arrow like gui
keymap.set("n", "<S-Up>", "v<Up>")
keymap.set("n", "<S-Down>", "v<Down>")
keymap.set("n", "<S-Left>", "v<Left>")
keymap.set("n", "<S-Right>", "v<Right>")
keymap.set("v", "<S-Up>", "<Up>")
keymap.set("v", "<S-Down>", "<Down>")
keymap.set("v", "<S-Left>", "<Left>")
keymap.set("v", "<S-Right>", "<Right>")
keymap.set("i", "<S-Up>", "<Esc>v<Up>")
keymap.set("i", "<S-Down>", "<Esc>v<Down>")
keymap.set("i", "<S-Left>", "<Esc>v<Left>")
keymap.set("i", "<S-Right>", "<Esc>v<Right>")


-- copy paste like gui
keymap.set("v", "<C-c>", '"+y<Esc>i')
keymap.set("v", "<C-x>", '"+d<Esc>i')
keymap.set("i", "<C-v>", '"+pi')
keymap.set("i", "<C-v>", '<Esc>"+pi', { noremap = true, silent = true })
keymap.set("i", "<C-z>", "<Esc>ui", { noremap = true, silent = true })
keymap.set("i", "<C-z>", "<Esc>ui", { noremap = true, silent = true })
keymap.set({ "i", "v", "x", "t" }, "<C-a>", "<C-\\><C-n>ggVG", { noremap = true, silent = true })

