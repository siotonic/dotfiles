return {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
        local catppuccin = require("catppuccin")

        catppuccin.setup({
            integrations = {
                telescope = true,
            },
        })

        -- Function to get OS theme using gsettings
        local function get_os_theme()
            local handle = io.popen("gsettings get org.gnome.desktop.interface color-scheme")
            local result = handle:read("*a")
            handle:close()

            if result:match("dark") then
                return "dark"
            elseif result:match("light") then
                return "light"
            end

            return "dark" -- Default to dark if detection fails
        end

        -- Function to apply the theme and transparency
        local function apply_theme(theme)
            if theme == "dark" then
                vim.cmd.colorscheme("catppuccin-mocha")
            else
                vim.cmd.colorscheme("catppuccin-latte")
            end

            -- Apply transparency
            vim.api.nvim_set_hl(0, "Normal", { bg = "NONE" })
            vim.api.nvim_set_hl(0, "NonText", { bg = "NONE" })
            vim.api.nvim_set_hl(0, "LineNr", { bg = "NONE" })
            vim.api.nvim_set_hl(0, "SignColumn", { bg = "NONE" })
            vim.api.nvim_set_hl(0, "StatusLine", { bg = "NONE" })
            vim.api.nvim_set_hl(0, "TabLine", { bg = "NONE" })
            vim.api.nvim_set_hl(0, "WinSeparator", { bg = "NONE" })
        end

        -- Initial theme application
        local current_theme = get_os_theme()
        apply_theme(current_theme)

        -- Periodically check for theme change
        local timer = vim.loop.new_timer()
        timer:start(0, 5000, vim.schedule_wrap(function()
            local new_theme = get_os_theme()
            if new_theme ~= current_theme then
                current_theme = new_theme
                apply_theme(current_theme)
            end
        end))
    end,
}
