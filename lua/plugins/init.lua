return {
    {
        "stevearc/conform.nvim",
        event = { "BufWritePre" },
        cmd = { "ConformInfo" },
        opts = require "configs.conform",
    },

    -- These are some examples, uncomment them if you want to see them work!
    {
        "neovim/nvim-lspconfig",
        config = function()
            require "configs.lspconfig"
        end,
    },

    {
        "nvim-lualine/lualine.nvim",
        config = function()
            require("configs.lualine").setup({})
        end,
    },

    {
        "windwp/nvim-ts-autotag",
        event = "VeryLazy",
        opts = {},
    },

    {
        "github/copilot.vim",
        cmd = "Copilot",
        event = { "VeryLazy" },
        config = function()
            require "configs.copilot"
        end,
    },

    {
    	"nvim-treesitter/nvim-treesitter",
    	config = function()
    		require "configs.treesitter"
    	end,
    },

    {
        "nvim-lualine/lualine.nvim",
        dependencies = { "kyazdani42/nvim-web-devicons" },
        config = function()
            require("configs.lualine").setup({})
        end,
    },

    {
        "AndreM222/copilot-lualine",
        after = "lualine.nvim",
        config = function()
            require("copilot-lualine").setup()
        end,
    }
}
