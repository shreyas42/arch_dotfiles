return {
    -- rule of thumb: plugin specific keymaps get defined in plugin spec
    {
        "nvim-telescope/telescope.nvim",
        cmd = "Telescope", -- load plugin when telescope command is executed
        dependencies = {
            "nvim-lua/plenary.nvim",
        },
        -- load plugin on keypress
        -- also defines keymaps
        keys = {
            { "<leader>ff", "<cmd>Telescope find_files hidden=true no_ignore=true<cr>" },
            { "<leader>fg", "<cmd>Telescope live_grep<cr>" },
            { "<leader>fb", "<cmd>Telescope buffers<cr>" },
            { "<leader>fh", "<cmd>Telescope help_tags<cr>" },
        },
        config = function()
            local actions = require("telescope.actions")
            require("telescope").setup({
                defaults = {
                    layout_config = {
                        prompt_position = "top",
                    },
                    sorting_strategy = "ascending",
                },
                pickers = {
                    buffers = {
                        mappings = {
                            i = {
                                ["<c-d>"] = actions.delete_buffer, -- delete in insert mode
                            },
                            n = {
                                ["dd"] = actions.delete_buffer, -- delete in normal mode
                            },
                        },
                    },
                },
            })
        end,
    },
}

