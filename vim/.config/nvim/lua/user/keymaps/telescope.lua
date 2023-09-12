local ok, builtin = pcall(require, "telescope.builtin")
local ok_telescope, telescope = pcall(require, "telescope")

if not ok or not ok_telescope then
	return
end

vim.keymap.set("n", "<leader>p", builtin.find_files, {})
vim.keymap.set("n", "<leader>f", builtin.live_grep, {})
vim.keymap.set("n", "<leader>b", builtin.buffers, {})
-- vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

telescope.setup({})
