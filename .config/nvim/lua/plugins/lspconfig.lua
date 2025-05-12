return {
    "neovim/nvim-lspconfig",
    opts = {
        servers = {
            lua_ls = {}
        }
    },
    config = function(_, opts)
        local lspconfig = require("lspconfig")
        local blink = require("blink.cmp")

        for server, config in pairs(opts.servers) do
            config.capabilities = blink.get_lsp_capabilities(config.capabilities)
            lspconfig[server].setup(config)
        end
    end,
}
