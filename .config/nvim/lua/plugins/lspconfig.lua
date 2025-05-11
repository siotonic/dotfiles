return {
    "neovim/nvim-lspconfig",
    config = function()
        local lspconfig = require("lspconfig")
        lspconfig.lua_ls.setup({})

        vim.keymap.set("i", "<C-Space>", "<C-x><C-o>")
    end,
}
