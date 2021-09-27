return require("packer").startup(
  function()
    use "wbthomason/packer.nvim"

    use "arcticicestudio/nord-vim"

    use "neovim/nvim-lspconfig"
    use "kabouzeid/nvim-lspinstall"
    use {
      "junegunn/fzf",
      run = function()
        vim.fn["fzf#install"]()
      end
    }
    use "junegunn/fzf.vim"

    use "nvim-lua/completion-nvim"

    use "mhartington/formatter.nvim"

    use {
      "nvim-treesitter/nvim-treesitter",
      run = function()
        vim.cmd [[TSUpdate]]
      end
    }

    use "preservim/nerdtree"
    use "ryanoasis/vim-devicons"
    use "Xuyuanp/nerdtree-git-plugin"

    use "vim-airline/vim-airline"
  end
)
