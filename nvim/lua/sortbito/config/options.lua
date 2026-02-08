vim.g.mapleader = " "
vim.scriptencoding = "utf-8"
vim.g.snacks_animate = true

local opt = vim.opt

-- search settings
opt.smartcase = true
opt.ignorecase = true
opt.hlsearch = false
opt.showmatch = true

-- tabs settings
opt.expandtab = true
opt.tabstop = 4
opt.smartindent = true
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true

-- visual settings
opt.wrap = true
opt.linebreak = true
opt.relativenumber = true
opt.number = true
opt.cursorline = true
opt.termguicolors = true
opt.showmode = false
opt.smoothscroll = true

-- window settings
opt.splitbelow = true
opt.splitright = true

-- other settings
opt.clipboard = "unnamedplus"
opt.encoding = "utf-8"
opt.fileencoding = "utf-8"
opt.ttyfast = true
opt.autoindent = false
opt.undolevels = 10000
