return {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
        sections = {
            lualine_a = {'mode'},
            lualine_b = {'diff'},
            lualine_c = {'filename'},
            lualine_x = {'encoding', 'filetype'},
            lualine_y = {},
            lualine_z = {'location'}
        },
    },
}