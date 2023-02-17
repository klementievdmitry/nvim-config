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

require("lazy").setup({
        -- folke/tokyonight.nvim colorscheme
        {
                "folke/tokyonight.nvim",
                lazy = false, -- make sure we load this during startup if it is your main colorscheme
                priority = 1000, -- make sure to load this before all the other start plugins
        },

        -- Highly experimental plugin that completely replaces the UI for `messages`, `cmdline` and the `popupmenu`.
        {
                "folke/noice.nvim",
                dependencies = {
                        -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
                        "MunifTanjim/nui.nvim",
                        -- OPTIONAL:
                        --   `nvim-notify` is only needed, if you want to use the notification view.
                        --   If not available, we use `mini` as the fallback
                        "rcarriga/nvim-notify",
                },
        },

        -- VSCode like winbar
        {
                "utilyre/barbecue.nvim",
                dependencies = {
                        "SmiteshP/nvim-navic",
                        "nvim-tree/nvim-web-devicons",
                },
        },

        -- Cursorline/Cursorword plugin
        "yamatsum/nvim-cursorline",

        -- Treesitter
        "nvim-treesitter/nvim-treesitter",

        -- Git decorations
        "lewis6991/gitsigns.nvim",

        -- Terminal
        "akinsho/toggleterm.nvim",

        -- Telescope
        {
                "nvim-telescope/telescope.nvim",
                dependencies = {
                        {
                                "nvim-lua/plenary.nvim",
                        },
                },
        },

        -- Telescope file browser
        {
                "nvim-telescope/telescope-file-browser.nvim",
                dependencies = {
                        "nvim-tree/nvim-web-devicons", -- optional for file icons
                },
        },


        -- Nvim tree
        {
                "nvim-tree/nvim-tree.lua",
                dependencies = {
                        "nvim-tree/nvim-web-devicons",
                },
        },

        -- Autopairs
        "windwp/nvim-autopairs",

        -- LSP
        {
                "neovim/nvim-lspconfig",
                dependencies = {
                        "onsails/lspkind-nvim"
                },
        },

        -- Mason
        {
                "williamboman/mason.nvim",
                dependencies = {
                        "williamboman/mason-lspconfig.nvim",
                },
        },

        -- Autocompletion
        {
                "hrsh7th/nvim-cmp",
                dependencies = {
                        "hrsh7th/cmp-nvim-lsp",
                        "hrsh7th/cmp-buffer",
                },
        },

        -- Organizer
        "nvim-neorg/neorg",
})
