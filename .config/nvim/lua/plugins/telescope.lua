return {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
    },
    opts = {
        defaults = {
            vimgrep_arguments = { "rg", "--color=never", "--no-heading", "--with-filename", "--line-number", "--column", "--smart-case", "--hidden", "--glob", "!**/.git/*" },
        },
        pickers = {
            find_files = {
                find_command = { "rg", "--files", "--hidden", "--glob", "!**/.git/*" },
            },
        },
    },
    keys = {
        { "<leader>ff", ":Telescope find_files<CR>", desc = "Telescope find files" },
        { "<leader>fg", ":Telescope live_grep<CR>", desc = "Telescope live grep" },
        { "<leader>fb", ":Telescope buffers<CR>", desc = "Telescope buffers" },
    },
}
