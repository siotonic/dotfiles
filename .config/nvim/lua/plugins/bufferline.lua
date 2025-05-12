return {
    "akinsho/bufferline.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    lazy = false,
    opts = {
        options = {
            always_show_bufferline = false,
        },
    },
    keys = {
        { "<leader>&", ":BufferLineGoToBuffer 1<CR>", silent = true },
        { "<leader>é", ":BufferLineGoToBuffer 2<CR>", silent = true },
        { "<leader>\"", ":BufferLineGoToBuffer 3<CR>", silent = true },
        { "<leader>'", ":BufferLineGoToBuffer 4<CR>", silent = true },
        { "<leader>(", ":BufferLineGoToBuffer 5<CR>", silent = true },
        { "<leader>-", ":BufferLineGoToBuffer 6<CR>", silent = true },
        { "<leader>è", ":BufferLineGoToBuffer 7<CR>", silent = true },
        { "<leader>_", ":BufferLineGoToBuffer 8<CR>", silent = true },
        { "<leader>ç", ":BufferLineGoToBuffer 9<CR>", silent = true },
        { "<leader>$", ":BufferLineGoToBuffer -1<CR>", silent = true },
        { "<leader>w", ":bd<CR>", silent = true },
    },
}
