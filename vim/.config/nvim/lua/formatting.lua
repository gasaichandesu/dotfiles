local eslint_fmt = {
  function()
    return {
      exe = "prettier",
      args = {"--stdin-filepath", vim.api.nvim_buf_get_name(0)},
      stdin = true
    }
  end
}

require("formatter").setup(
  {
    filetype = {
      lua = {
        function()
          return {
            exe = "luafmt",
            args = {"--indent-count", 2, "--stdin"},
            stdin = true
          }
        end
      },
      php = {
        function()
          return {
            exe = "./vendor/bin/phpcbf",
            args = {"--stdin-path=" .. vim.api.nvim_buf_get_name(0), "-"},
            stdin = true,
            ignore_exitcode = true
          }
        end
      },
      dart = {
        function()
          return {
            exe = "dart format",
            args = {vim.api.nvim_buf_get_name(0)},
            stdin = false
          }
        end
      },
      typescript = eslint_fmt,
      typescriptreact = eslint_fmt,
      javascript = eslint_fmt,
      javascriptreact = eslint_fmt,
      javascriptvue = eslint_fmt,
      vue = eslint_fmt
    }
  }
)

require("nvim-treesitter.configs").setup {
  highlight = {
    enable = true
  }
}
