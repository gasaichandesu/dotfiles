return require("packer").startup(
function()
    use "wbthomason/packer.nvim"

    use "neovim/nvim-lspconfig"
    use "kabouzeid/nvim-lspinstall"
    use "hrsh7th/cmp-nvim-lsp"
    use "hrsh7th/cmp-buffer"
    use "hrsh7th/nvim-cmp"
    use "tami5/lspsaga.nvim"

    use "hrsh7th/cmp-vsnip"
    use "hrsh7th/vim-vsnip"

    use {
        "junegunn/fzf",
        run = function()
            vim.fn["fzf#install"]()
        end
    }
    use "junegunn/fzf.vim"

    use "mhartington/formatter.nvim"

    use {
        "nvim-treesitter/nvim-treesitter",
        run = function()
            vim.cmd [[TSUpdate]]
        end
    }

    use "nvim-lua/plenary.nvim"
    use {"akinsho/flutter-tools.nvim", requires = "nvim-lua/plenary.nvim"}

    use "preservim/nerdtree"
    use "ryanoasis/vim-devicons"
    use "Xuyuanp/nerdtree-git-plugin"

    use "vim-airline/vim-airline"

    use "arcticicestudio/nord-vim"
end
)