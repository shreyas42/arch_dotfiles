return {
    -- Gruvbox colorscheme
    {
        "ellisonleao/gruvbox.nvim",
        priority = 1000,
        config = function()
            require("gruvbox").setup({
                transparent_mode = true,
            })
            vim.cmd("colorscheme gruvbox")
        end,
    },

    -- Lualine status line
    {
        "nvim-lualine/lualine.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        event = "VeryLazy", -- load late
        config = function()
            require("lualine").setup({
                options = {
                    theme = "gruvbox",
                    globalstatus = true, -- shared statusline across windows
                },
                sections = {
                    lualine_c = {
                        { "filename" },
                        {
                            "diagnostics",
                            sources = { "nvim_diagnostic" },
                            symbols = { error = " ", warn = " ", info = " ", hint = "󰌵 " },
                            colored = true,
                            update_in_insert = false,
                            always_visible = true,
                        },
                    },
                },
                -- Sections can be modified via lualine_a|b|c|x|y|z
                -- filename takes values; 0 = name only, 1 = relpath, 2 = abspath
            })
        end,
    },

    -- Bufferline
    {
        "akinsho/bufferline.nvim",
        version = "*",
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },

        event = "BufReadPost",
        config = function()
            require("bufferline").setup({
                options = {
                    mode = "buffers",
                    diagnostics = "nvim_lsp",
                    diagnostics_indicator = function(count, level, diagnostics_dict, context)
                        local icon = level:match("error") and " " or " "
                        return " " .. icon .. count
                    end,
                    separator_style = "slant",
                    show_buffer_close_icons = true,
                    show_close_icon = false,
                },
            })
        end,
    },
}
