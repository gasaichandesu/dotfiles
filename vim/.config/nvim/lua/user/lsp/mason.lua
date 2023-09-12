local ok_mason, mason = pcall(require, "mason")
local ok_mason_lspconfig, mason_lspconfig = pcall(require, "mason-lspconfig")
local ok_lspconfig, lspconfig = pcall(require, "lspconfig")
local ok_cmp_nvim_lsp, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")

if not ok_mason or not ok_mason_lspconfig or not ok_lspconfig or not ok_cmp_nvim_lsp then
	return
end

local runtime_path = vim.split(package.path, ";")
table.insert(runtime_path, "lua/?.lua")
table.insert(runtime_path, "lua/?/init.lua")

mason.setup()
mason_lspconfig.setup()

mason_lspconfig.setup_handlers({
	--- Auto register all LSP handlers
	-- 	function (server_name)
	--		lspconfig[server_name].setup {}
	--end,
	--- Custom LSPs
	["intelephense"] = function()
		lspconfig.intelephense.setup({})
	end,
	["lua_ls"] = function()
		lspconfig.lua_ls.setup({
			capabilities = cmp_nvim_lsp.default_capabilities(),
			settings = {
				Lua = {
					runtime = {
						version = "LuaJIT",
						path = runtime_path,
					},
					diagnostics = {
						globals = { "vim" },
					},
					workspace = {
						library = vim.api.nvim_get_runtime_file("", true),
					},
					telemetry = {
						enable = false,
					},
				},
			},
		})
	end,
})
