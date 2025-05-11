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

        vim.keymap.set("n", "<leader>&", "<Cmd>BufferLineGoToBuffer 1<CR>")
        vim.keymap.set("n", "<leader>é", "<Cmd>BufferLineGoToBuffer 2<CR>")
        vim.keymap.set("n", "<leader>\"", "<Cmd>BufferLineGoToBuffer 3<CR>")
        vim.keymap.set("n", "<leader>'", "<Cmd>BufferLineGoToBuffer 4<CR>")
        vim.keymap.set("n", "<leader>(", "<Cmd>BufferLineGoToBuffer 5<CR>")
        vim.keymap.set("n", "<leader>-", "<Cmd>BufferLineGoToBuffer 6<CR>")
        vim.keymap.set("n", "<leader>è", "<Cmd>BufferLineGoToBuffer 7<CR>")
        vim.keymap.set("n", "<leader>_", "<Cmd>BufferLineGoToBuffer 8<CR>")
        vim.keymap.set("n", "<leader>ç", "<Cmd>BufferLineGoToBuffer 9<CR>")
        vim.keymap.set("n", "<leader>$", "<Cmd>BufferLineGoToBuffer -1<CR>")
    end
}
