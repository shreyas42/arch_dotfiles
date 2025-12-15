return {
    -- Git signs (inline hunks, gutter indicators)
    {
        "lewis6991/gitsigns.nvim",
        config = function()
            local gitsigns = require("gitsigns")
            gitsigns.setup()

            -- Keymaps
            vim.keymap.set("n", "<leader>hp", gitsigns.preview_hunk)
            vim.keymap.set("n", "<leader>hs", gitsigns.stage_hunk)
            vim.keymap.set("n", "<leader>hu", gitsigns.undo_stage_hunk)
            vim.keymap.set("n", "<leader>hb", gitsigns.blame_line)
        end,
    },

    -- Git UI
    {
        "NeogitOrg/neogit",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "sindrets/diffview.nvim",
        },
        config = function()
            require("neogit").setup({
                integrations = { diffview = true }
            })

            vim.keymap.set("n", "<leader>gs", "<cmd>Neogit<CR>")
        end,

    },

    -- Diff viewer + merge conflict tool
    {
        "sindrets/diffview.nvim",
        dependencies = "nvim-lua/plenary.nvim",
        config = function()
            require("diffview").setup()
            vim.keymap.set("n", "<leader>gd", "<cmd>DiffviewOpen<CR>")
            vim.keymap.set("n", "<leader>gD", "<cmd>DiffviewClose<CR>")
        end,
    },

    -- Toggle term
    {
        "akinsho/toggleterm.nvim",
        config = function()
            require("toggleterm").setup({
                size = 15,
                direction = "float",
                float_opts = {
                    border = "curved",
                },
                start_in_insert = true,
                shade_terminals = true,
            })

            local keymap = vim.keymap.set
            local Terminal = require("toggleterm.terminal").Terminal

            -- Toggle main floating terminal
            keymap("n", "<leader>tt", "<cmd>ToggleTerm direction=float<CR>")

            -- Vertical split terminal
            keymap("n", "<leader>tv", "<cmd>ToggleTerm size=60 direction=vertical<CR>")
            
            -- Horizontal split terminal
            keymap("n", "<leader>th", "<cmd>ToggleTerm size=15 direction=horizontal<CR>")

            -- Close terminal from terminal mode using Esc Esc
            keymap("t", "<Esc><Esc>", [[<C-\><C-n>]], { desc = "Exit terminal mode" })

            -- Run current file based on filetype
            keymap("n", "<leader>tx", function()
                local ft = vim.bo.filetype
                if ft == "python" then
                    vim.cmd("TermExec cmd='python3 " .. vim.fn.expand("%") .. "'")
                elseif ft == "cpp" then
                    vim.cmd("TermExec cmd='g++ -O2 % -o out && ./out'")
                elseif ft == "c" then
                    vim.cmd("TermExec cmd='gcc -O2 % -o out && ./out'")
                end
            end)
        end,
    },
}
