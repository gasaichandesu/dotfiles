local ok_formatter, formatter = pcall(require, "formatter")

if not ok_formatter then
	return
end

formatter.setup({
	logging = true,
	log_level = vim.log.levels.WARN,
	filetype = {
		lua = {
			require("formatter.filetypes.lua").stylua,
		},
		dart = {
			require("formatter.filetypes.dart").dartformat,
		},
		php = {
			require("formatter.filetypes.php").phpcbf,
		},
		javascript = {
			require("formatter.filetypes.javascript").prettier,
		},
		json = {
			require("formatter.filetypes.json").jq,
		},
	},
})
