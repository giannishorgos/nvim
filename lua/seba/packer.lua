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
        'wfxr/minimap.vim',
        -- build = "cargo install --locked code-minimap",
        cmd = { "Minimap", "MinimapClose", "MinimapToggle", "MinimapRefresh", "MinimapUpdateHighlight" },
        init = function()
            vim.g.minimap_width = 10
            vim.g.minimap_auto_start = true
            vim.g.minimap_auto_start_win_enter = true
            vim.g.minimap_highlight_range = true
            vim.g.minimap_highlight_search = true
        end,
    }   
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }
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
    -- Prettier Code Formatter
use {
    'prettier/vim-prettier',
    run = 'npm install',
    ft = { 'javascript', 'typescript' },
}

    -- use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })

end)
