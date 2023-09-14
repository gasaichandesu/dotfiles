vim.g.mapleader = " "

-- disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

require("user.colorscheme")
require("user.lsp")
require("user.completions")
require("user.formatting")
require("user.flutter")
require("user.git")
require("user.tree")
require("user.keymaps")
require("user.scrollbar")
