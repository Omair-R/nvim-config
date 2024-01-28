-- Automatic packer installation.
local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end

local packer_bootstrap = ensure_packer()

-- Compile packer whenever this file is updated.
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

-- Local shortcut variables.
local status_ok, packer = pcall(require, "packer") -- protect against first use errors.

if not status_ok then
    return
end

packer.util = require('packer.util')


-- Initialize packer
packer.init {
    display = {
        open_fn = function()
            return packer.util.float { border = "shadow" }
        end,
    },
}


return packer.startup(function(use)
    -- Requirements.
    use "wbthomason/packer.nvim"
    use "nvim-lua/popup.nvim"
    use "nvim-lua/plenary.nvim"
    use "nvim-tree/nvim-web-devicons"

    -- Color Schemes
    use { "catppuccin/nvim", as = "catppuccin" }
    -- use "rebelot/kanagawa.nvim"

    -- Telescope
    use { 'nvim-telescope/telescope.nvim', tag = '0.1.5', }


    -- ToggleTerminal
    use { "akinsho/toggleterm.nvim", tag = '*' }

    -- GitSign
    use { "lewis6991/gitsigns.nvim", config = function()
        require("gitsigns").setup()
    end }

    -- Nvim tree
    use "nvim-tree/nvim-tree.lua"

    -- Treesitter
    use { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate", }

    -- AutoPairs : Automatic bracket completion
    use "windwp/nvim-autopairs"

    -- Indent blankline: Indentation Guide
    use "lukas-reineke/indent-blankline.nvim"

    -- Lualine: status line
    use "nvim-lualine/lualine.nvim"

    -- Comment: toggle comments
    use "numToStr/Comment.nvim"

    -- Alpha nvim: A very nice greeter
    use "goolord/alpha-nvim"

    -- Lsp zero: this makes setting up an lsp very easy.
    use { 'VonHeikemen/lsp-zero.nvim', branch = 'v3.x',
        requires = {
            -- Mason is amazing.
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },
            { "mfussenegger/nvim-lint" },
            { "rshkarin/mason-nvim-lint" }, -- this connects nvim-lint with mason.
            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'saadparwaiz1/cmp_luasnip' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-nvim-lua' },
            { 'hrsh7th/cmp-path' },
            { 'hrsh7th/cmp-buffer' },
            -- Snippets
            { "rafamadriz/friendly-snippets" },
            { 'L3MON4D3/LuaSnip' },
        }
    }

    -- Trouble : diagnositics window
    use "folke/trouble.nvim"

    -- Wilder: useful popup menu for nvim commands
    use 'gelguy/wilder.nvim'

    -- Illuminate: highlights similar words
    use "RRethy/vim-illuminate"

    -- Whichkey : key suggestions
    use { "folke/which-key.nvim", config = function()
        vim.o.timeout = true
        vim.o.timeoutlen = 300
        require("which-key").setup {}
    end }

    use({
        'nvimdev/lspsaga.nvim',
        after = 'nvim-lspconfig',
        config = function()
            require('lspsaga').setup({})
            vim.keymap.set('n', 'K', '<cmd>Lspsaga hover_doc')
        end,
    })


    if packer_bootstrap then
        packer.sync()
    end
end)
