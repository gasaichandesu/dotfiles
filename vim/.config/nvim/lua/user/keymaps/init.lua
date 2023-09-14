vim.cmd([[ augroup FormatAutogroup
  autocmd!
  autocmd BufWritePost * FormatWrite
augroup END ]])

local function open_nvim_tree()
	require("nvim-tree.api").tree.open()
end

vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })

require("user.keymaps.telescope")
require("user.keymaps.tree")
