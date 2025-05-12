return {
    "neovim/nvim-lspconfig",
    config = function()
        local lspconfig = require("lspconfig")
        local capabilities = require("blink.cmp").get_lsp_capabilities()

        lspconfig.lua_ls.setup({ capabilities = capabilities })

        vim.keymap.set("i", "<C-Space>", "<C-x><C-o>")
    end,
}
