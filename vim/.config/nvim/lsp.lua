local function setup_servers()
  require "lspinstall".setup()
  local servers = require "lspinstall".installed_servers()
  for _, server in pairs(servers) do
    if server == "sumneko_lua" then
      require "lspconfig"[server].setup {
        on_attach = require "completion".on_attach,
        settings = {
          Lua = {
            diagnostics = {
              globals = {"vim"}
            }
          }
        }
      }
    end
    require "lspconfig"[server].setup {on_attach = require "completion".on_attach}
  end
end

setup_servers()

require "lspinstall".post_install_hook = function()
  setup_servers()
  vim.cmd("bufdo e")
end
