-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.8',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use ({
        'nyoom-engineering/oxocarbon.nvim',
        as = 'oxocarbon',
        config = function()
            vim.cmd('colorscheme oxocarbon')
        end
    })

    use ({
        "dgox16/oldworld.nvim",
        as = "oldworld"
    })

    use ({
        "folke/tokyonight.nvim",
        as = "tokyonight",
    })

    use({
        "bluz71/vim-moonfly-colors",
        as = "moonfly"
    })

    use ({
        "rose-pine/neovim",
        as = "rose-pine",
        --config = function ()
        --    vim.cmd('colorscheme rose-pine')
        --end
    })

    use ({
        "blazkowolf/gruber-darker.nvim",
        --[[
        as = 'gruber-darker',
        config = function()
            vim.cmd('colorscheme gruber-darker')
        end
        ]]--
    })
    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            --- Uncomment the two plugins below if you want to manage the language servers from neovim
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            {'neovim/nvim-lspconfig'},
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'L3MON4D3/LuaSnip'},
        }
    }
end)
