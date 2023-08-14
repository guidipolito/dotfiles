local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
    PACKER_BOOTSTRAP = fn.system {
        "git",
        "clone",
        "--depth",
        "1",
        "https://github.com/wbthomason/packer.nvim",
        install_path,
    }
    print "Installing packer close and reopen Neovim..."
    vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
    return
end

-- Have packer use a popup window
packer.init {
    display = {
        open_fn = function()
            return require("packer.util").float { border = "rounded" }
        end,
    },
}

-- Install your plugins here
return packer.startup(function(use)
    use "wbthomason/packer.nvim" -- Have packer manage itself
    use "famiu/nvim-reload"      -- add command: lua require"nvim-reload".Restart()
    --use "nvim-lua/popup.nvim"    -- An implementation of the Popup API from vim in Neovim
    use "nvim-lua/plenary.nvim"  -- Useful lua functions used ny lots of plugins
    -- Autopairs, integrates with both cmp and treesitter
    use { "windwp/nvim-autopairs", config = function() require "nvim-autopairs".setup {} end }
    use "mattn/emmet-vim"       -- html shortcuts
    use "numToStr/Comment.nvim" -- Easily comment stuff
    use "kyazdani42/nvim-web-devicons"
    use { "kyazdani42/nvim-tree.lua", config = function() require "plugins.nvimTree" end }
    use { "akinsho/bufferline.nvim", config = function() require "plugins.bufferline" end }
    use "moll/vim-bbye"                                                                  -- Close buffer
    use { "gpanders/editorconfig.nvim", config = function() require "editorconfig" end } -- auto set project indentation
    use { 'feline-nvim/feline.nvim', config = function() require "plugins.feline" end }
    use { "akinsho/toggleterm.nvim", config = function() require "toggleterm".setup {} end }
    use { "ahmedkhalf/project.nvim", config = function() require "project_nvim".setup {} end }
    use { "lukas-reineke/indent-blankline.nvim", config = function() require "indent_blankline".setup {} end }
    use { "goolord/alpha-nvim", require "colorizer".setup {} }
    use "antoinemadec/FixCursorHold.nvim" -- This is needed to fix lsp doc highlight
    use 'NvChad/nvim-colorizer.lua'
    use "lambdalisue/suda.vim"
    use { "glepnir/dashboard-nvim", config = function() require "plugins.dashboard" end }

    -- completion plugins
    use "neovim/nvim-lspconfig" -- enable LSP
    use {
        "williamboman/mason.nvim",
        run = ":MasonUpdate",
        config = function() require "mason".setup {} end
    }
    use "williamboman/mason-lspconfig.nvim"
    use { "hrsh7th/nvim-cmp", config = function() require "plugins.cmp" end }
    use "hrsh7th/cmp-buffer"       -- buffer completions
    use "hrsh7th/cmp-path"         -- path completions
    use "hrsh7th/cmp-cmdline"      -- cmdline completions
    use "saadparwaiz1/cmp_luasnip" -- snippet completions
    use "hrsh7th/cmp-nvim-lsp"

    -- snippets
    use { "L3MON4D3/LuaSnip", config = function() require "plugins.luasnip" end }
    use "rafamadriz/friendly-snippets" -- a bunch of snippets to use

    --use "tamago324/nlsp-settings.nvim" -- language server settings defined in json for
    use "mhartington/formatter.nvim"

    -- Telescope
    use { "nvim-telescope/telescope.nvim", config = function()
        local t = require 'telescope'
        t.load_extension('projects')
        t.load_extension('emoji')
    end }
    use "xiyaowong/telescope-emoji.nvim"

    -- Treesitter
    use {
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate",
        config = function()
            require 'nvim-treesitter.configs'.setup {
                highlight = {
                    enable = true
                },
                indent = {
                    enable = true
                }
            }
        end
    }
    use "jwalton512/vim-blade"
    use "JoosepAlviste/nvim-ts-context-commentstring"

    -- Git
    use { "lewis6991/gitsigns.nvim", config = function() require "gitsigns".setup {} end }

    -- Testing
    use { "klen/nvim-test", config = function() require "plugins.nvimTest" end }
    use 'ggandor/lightspeed.nvim' -- motion
    use({
        "iamcco/markdown-preview.nvim",
        run = "cd app && npm install",
        config = function() vim.g.mkdp_filetypes = { "markdown" } end,
        ft = { "markdown" },
    })
    -- Colorschemes
    use "EdenEast/nightfox.nvim"
    use "ray-x/aurora"
    use 'Mofiqul/dracula.nvim'
    use 'folke/tokyonight.nvim'

    use { "LunarVim/bigfile.nvim", config = function() require "bigfile".setup {} end }
    use {
        'prettier/vim-prettier',
    }
    use { "rcarriga/nvim-dap-ui", requires = { "mfussenegger/nvim-dap" } }

    use { "CRAG666/code_runner.nvim", config = function()
        require"code_runner".setup{
            filetype = {
                ruby = "ruby $file",
            }
        }
    end}

    if PACKER_BOOTSTRAP then
        require("packer").sync()
    end
end)
