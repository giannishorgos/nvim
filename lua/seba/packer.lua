vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.4',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use {
        'theprimeagen/harpoon'
    }

    use {
        'jiangmiao/auto-pairs'
    }

    use {
        'tpope/vim-fugitive'
    }

    -- indent line
    use "lukas-reineke/indent-blankline.nvim"

    use "ellisonleao/gruvbox.nvim" 
    use "folke/tokyonight.nvim" 
    use "bluz71/vim-nightfly-colors"
    use "NLKNguyen/papercolor-theme"

    use 'alvan/vim-closetag'

    use {
        'nvim-lualine/lualine.nvim',
        opts = {
            options = {
                icons_enabled = false,
                theme = 'auto',
                component_separators = '|',
                section_separators = '',
            },
        },
    }

    use { 'numToStr/Comment.nvim', opts = {} }
    
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            --- Uncomment these if you want to manage LSP servers from neovim
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            -- LSP Support
            {'neovim/nvim-lspconfig'},
            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'L3MON4D3/LuaSnip'},
        }
    }

    use({
        "iamcco/markdown-preview.nvim",
        run = function() vim.fn["mkdp#util#install"]() end,
    })

    use "pocco81/auto-save.nvim"

    use "lukas-reineke/lsp-format.nvim"
    --
    -- Prettier Code Formatter
use {
    'prettier/vim-prettier',
    run = 'npm install',
    ft = { 'javascript', 'typescript' },
}

end)
