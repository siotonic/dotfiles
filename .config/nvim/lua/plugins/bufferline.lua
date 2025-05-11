return {
    "akinsho/bufferline.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        vim.opt.termguicolors = true
        require("bufferline").setup({
            options = {
                always_show_bufferline = false,
            }
        })

        vim.keymap.set("n", "<leader>&", ":BufferLineGoToBuffer 1<CR>", { silent = true })
        vim.keymap.set("n", "<leader>é", ":BufferLineGoToBuffer 2<CR>", { silent = true })
        vim.keymap.set("n", "<leader>\"", ":BufferLineGoToBuffer 3<CR>", { silent = true })
        vim.keymap.set("n", "<leader>'", ":BufferLineGoToBuffer 4<CR>", { silent = true })
        vim.keymap.set("n", "<leader>(", ":BufferLineGoToBuffer 5<CR>", { silent = true })
        vim.keymap.set("n", "<leader>-", ":BufferLineGoToBuffer 6<CR>", { silent = true })
        vim.keymap.set("n", "<leader>è", ":BufferLineGoToBuffer 7<CR>", { silent = true })
        vim.keymap.set("n", "<leader>_", ":BufferLineGoToBuffer 8<CR>", { silent = true })
        vim.keymap.set("n", "<leader>ç", ":BufferLineGoToBuffer 9<CR>", { silent = true })
        vim.keymap.set("n", "<leader>$", ":BufferLineGoToBuffer -1<CR>", { silent = true })

        vim.keymap.set("n", "<leader>w", ":bd<CR>", { silent = true })
    end
}
