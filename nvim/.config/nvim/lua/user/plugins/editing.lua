return {
    {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        dependencies = { "nvim-treesitter/nvim-treesitter" },
        config = function()
            require("nvim-autopairs").setup({
                check_ts = true, -- treesitter awareness
                disable_filetype = { "TelescopePrompt" },
            })
        end,
    },
}
