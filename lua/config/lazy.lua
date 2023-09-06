local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " "
vim.g.maplocalleader = " "

local plugins = {
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.0',
        -- or                            , branch = '0.1.x',
        dependencies = { { 'nvim-lua/plenary.nvim' } }
    },

    {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    },

    'kyazdani42/nvim-web-devicons',
    'ofirgall/ofirkai.nvim',
    'christoomey/vim-tmux-navigator',
    'nvim-treesitter/playground',
    'theprimeagen/harpoon',
    'theprimeagen/refactoring.nvim',
    'mbbill/undotree',
    'tpope/vim-fugitive',
    'nvim-treesitter/nvim-treesitter-context',
    'folke/zen-mode.nvim',
    'eandrju/cellular-automaton.nvim',
    'willothy/veil.nvim',
    'mhinz/vim-startify',
    'mkropat/vim-ezguifont',
    'mg979/vim-visual-multi',
    'stevearc/oil.nvim',

    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        dependencies = {
            -- LSP Support
            'neovim/nvim-lspconfig',
            'williamboman/mason.nvim',
            'williamboman/mason-lspconfig.nvim',

            -- Autocompletion
            'hrsh7th/nvim-cmp',
            'hrsh7th/cmp-buffer',
            'hrsh7th/cmp-path',
            'saadparwaiz1/cmp_luasnip',
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-nvim-lua',

            -- Snippets
            'L3MON4D3/LuaSnip',
            'rafamadriz/friendly-snippets',

            -- Clangd
            'p00f/clangd_extensions.nvim'
        }
    },

    {
        'mfussenegger/nvim-dap',
        dependencies = {
            'williamboman/mason.nvim',
            'jay-babu/mason-nvim-dap.nvim',
        }
    },


    { 'tpope/vim-commentary' },

    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'kyazdani42/nvim-web-devicons', lazy = true }
    },

    {
        'kdheepak/tabline.nvim',
        -- dependencies = { { 'hoob3rt/lualine.nvim', lazy = true }, {'kyazdani42/nvim-web-devicons', lazy = true} }
    },

    {
        'tanvirtin/vgit.nvim',
        dependencies = {
            'nvim-lua/plenary.nvim'
        }
    },

    {
        'nvim-tree/nvim-tree.lua',
        dependencies = { 'kyazdani42/nvim-web-devicons' },
    },

    {
        'jose-elias-alvarez/null-ls.nvim',
        dependencies = { "nvim-lua/plenary.nvim" },
    },
}

local opts = {
    defaults = {
        lazy = false,
    }
}

require("lazy").setup(plugins, opts)
