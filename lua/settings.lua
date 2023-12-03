
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

opt.cursorline = true

opt.splitright = true
opt.splitbelow = true

-- theme
vim.cmd([[colorscheme gruvbox]])

-- enable TERDTree of start nvim
vim.cmd([[
    autocmd VimEnter * NERDTree 
]])
