vim.g.mapleader = " "

local opt = vim.opt

opt.guicursor = ""

opt.number = true
opt.relativenumber = true

opt.expandtab = true
opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.cursorline = true
opt.confirm = true
opt.clipboard = "unnamedplus"

opt.list = true
opt.spelllang = { "en" }
opt.smartindent = true

opt.wildmode = "longest:full,full"
opt.wrap = false

opt.swapfile = false
opt.backup = false
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
opt.undofile = true

opt.hlsearch = false
opt.incsearch = true

opt.termguicolors = true

opt.scrolloff = 8
opt.signcolumn = "yes"

opt.updatetime = 50

opt.colorcolumn = "80"

opt.grepformat = "%f:%l:%c:%m"
opt.grepprg = "rg --vimgrep"
