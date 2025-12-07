return {
    {
        "nvim-tree/nvim-tree.lua",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        cmd = { "NvimTreeToggle", "NvimTreeOpen" },
        config = function()
            require("nvim-tree").setup({
                view = {
                    side = "right",
                    width = 30,
                },
                
                renderer = {
                    highlight_git = true,
                    icons = {
                        show = {
                            git = true,
                            folder = true,
                            file = true,
                        },
                    },
                },

                update_focused_file = {
                    enable = true,
                    update_root = false,
                },
                
                git = {
                    enable = true,
                    ignore = false,
                },
            })
        end,
    }
}
