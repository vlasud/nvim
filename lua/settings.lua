
local opt = vim.opt

opt.number = true

opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

opt.wrap = true
opt.linebreak = true

opt.ignorecase = true
opt.smartcase = true

opt.splitright = true
opt.splitbelow = true

-- theme
vim.g.gruvbox_contrast_dark = "hard"
vim.g.gruvbox_contrast = "hard"
vim.cmd([[colorscheme tokyonight]])

-- enable TERDTree of start nvim
vim.cmd([[
    autocmd VimEnter * NERDTree
]])


-- git blame
vim.g.gitblame_delay = 1000
