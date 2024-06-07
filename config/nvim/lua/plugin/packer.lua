-- packer-config.lua

local install_path = vim.fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  vim.fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
end
-- Load Packer
require('packer').startup(function()
    -- Your plugins go here

    --Treesitter
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}

    --nvim_lspconfig
    use {'neovim/nvim-lspconfig'}
    -- Install nvim-compe (if not already installed)
    use {'hrsh7th/nvim-compe'}
    --Install Telescope
    use {'nvim-telescope/telescope.nvim', requires = {'nvim-lua/plenary.nvim'}}
    --UndoTree
      use("mbbill/undotree")
    -- indent blankline 
    use "lukas-reineke/indent-blankline.nvim"
    --lspZero
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            --- Uncomment the two plugins below if you want to manage the language servers from neovim
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            -- LSP Support
            {'neovim/nvim-lspconfig'},
            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-path'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'L3MON4D3/LuaSnip'},
        }
    }
    --adding my theme 
    use { "zootedb0t/citruszest.nvim" }


end)
