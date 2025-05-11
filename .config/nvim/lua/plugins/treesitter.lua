return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local configs = require("nvim-treesitter.configs")

        configs.setup({
            ensure_installed = {
                -- Basics
                "vim",
                "vimdoc",
                "markdown",
                "markdown_inline",
                "make",
                -- Configuration
                "json",
                "yaml",
                "toml",
                "hyprlang",
                -- Programming
                "bash",
                "fish",
                "lua",
                "html",
                "css",
                "javascript",
                "typescript",
                "rust",
                "go",
                "gomod",
            },
            highlight = { enable = true },
            indent = { enable = true },
            auto_install = true,
        })
    end,
}
