require("plugins")
require("lsp")
require("formatting")

local cmd = vim.cmd
local fn = vim.fn
local g = vim.g
local opt = vim.opt

cmd([[colorscheme nord]])

opt.completeopt = "menuone,noinsert,noselect"
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.smartindent = true

opt.exrc = true
opt.relativenumber = true
opt.hidden = true
opt.nu = true
opt.smartcase = true
opt.scrolloff = 8
opt.signcolumn = "yes"

-- vim.api.nvim_set_keymap('n', '<C-p>', '<CMD>Files<CR>', opts)
-- vim.api.nvim_set_keymap('n', '<C-E>', '<CMD>NERDTreeToggle<CR>', opts)  

-- Runs Formatter on save
vim.api.nvim_exec(
  [[
augroup FormatAutogroup
  autocmd!
  autocmd BufWritePost *.js,*.json,*.ts,*.css,*.scss,*.md,*.html,*.lua : FormatWrite
augroup END
]],
  true
)
