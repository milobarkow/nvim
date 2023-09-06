return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {'tikhomirov/vim-glsl'}

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    use { 'kyazdani42/nvim-web-devicons' }

    -- themes
    use { 'ofirgall/ofirkai.nvim'}

    use { 'christoomey/vim-tmux-navigator' }
    use { 'christoomey/vim-system-copy' }
    use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
    use("nvim-treesitter/playground")
    use("theprimeagen/harpoon")
    use("theprimeagen/refactoring.nvim")
    use("mbbill/undotree")
    use("tpope/vim-fugitive")
    use("nvim-treesitter/nvim-treesitter-context");

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'saadparwaiz1/cmp_luasnip' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-nvim-lua' },

            -- Snippets
            { 'L3MON4D3/LuaSnip' },
            { 'rafamadriz/friendly-snippets' },

            -- Clangd
            { 'p00f/clangd_extensions.nvim' }
        }
    }

    use {
        'mfussenegger/nvim-dap',
        requires = {
            'williamboman/mason.nvim',
            'jay-babu/mason-nvim-dap.nvim',
        }
    }

use("folke/zen-mode.nvim")
use("eandrju/cellular-automaton.nvim")
    use("willothy/veil.nvim")

    use {'tpope/vim-commentary'}

    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    use {'mhinz/vim-startify'}
    use {'mkropat/vim-ezguifont'}
    use {'mg979/vim-visual-multi'}
    use {
        'kdheepak/tabline.nvim',
        config = function()
            require'tabline'.setup {
                -- Defaults configuration options
                enable = true,
                options = {
                    -- If lualine is installed tabline will use separators configured in lualine by default.
                    -- These options can be used to override those settings.
                    section_separators = {'', ''},
                    component_separators = {''},
                    max_bufferline_percent = 66, -- set to nil by default, and it uses vim.o.columns * 2/3
                    show_tabs_always = false, -- this shows tabs only when there are more than one tab or if the first tab is named
                    show_devicons = true, -- this shows devicons in buffer section
                    show_bufnr = true, -- this appends [bufnr] to buffer section,
                    show_filename_only = true, -- shows base filename only instead of relative path in filename
                    modified_icon = "+ ", -- change the default modified icon
                    modified_italic = false, -- set to true by default; this determines whether the filename turns italic if modified
                    show_tabs_only = false, -- this shows only tabs instead of tabs + buffers
                }
            }
            vim.cmd[[
            set guioptions-=e " Use showtabline in gui vim
            set sessionoptions+=tabpages,globals " store tabpages and globals in session
            ]]
        end,
        requires = { { 'hoob3rt/lualine.nvim', opt = true }, {'kyazdani42/nvim-web-devicons', opt = true} }
    }

    use {
        'tanvirtin/vgit.nvim',
        requires = {
            'nvim-lua/plenary.nvim'
        }
    }

    use {
        'nvim-tree/nvim-tree.lua',
        requires = { 'kyazdani42/nvim-web-devicons' },
    }

    use({
        "jose-elias-alvarez/null-ls.nvim",
        -- config = function()
        --     return require "after.plugin.null-ls" 
        -- end,
        requires = { "nvim-lua/plenary.nvim" },
    })
end)
