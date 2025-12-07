--- BEGIN KEYMAPS ---
--- Editor keymaps
vim.g.mapleader = "," -- Leader key
vim.keymap.set("n", "<leader>w", ":write<CR>") -- Write shortcut
vim.keymap.set("n", "<leader>q", ":quit<CR>") -- Quit (without saving) shortcut
vim.keymap.set("n", "<leader>wq", ":write<CR>:quit<CR>") -- Quit (with saving) shortcut
vim.keymap.set("n", "<leader>qa", ":quitall<CR>") -- Quit all (without saving)

--- Search keymaps
vim.keymap.set("n", "<leader>h", ":noh<CR>") -- Clear search highlights

--- Window creation, navigation and management
vim.keymap.set("n", "<leader>wh", ":split<CR>") -- Create horizontal split
vim.keymap.set("n", "<leader>wv", ":vsplit<CR>") -- Create vertical split
vim.keymap.set("n", "<leader>w+", "<C-w>+") -- Increase vertical size
vim.keymap.set("n", "<leader>w-", "<C-w>-") -- Decrease vertical size
vim.keymap.set("n", "<leader>w>", "<C-w>>") -- Increase horizontal size
vim.keymap.set("n", "<leader>w<", "<C-w><") -- Decrease horizontal size
vim.keymap.set("n", "<C-h>", "<C-w>h") -- Move left window
vim.keymap.set("n", "<C-l>", "<C-w>l") -- Move right window
vim.keymap.set("n", "<C-k>", "<C-w>k") -- Move top window
vim.keymap.set("n", "<C-j>", "<C-w>j") -- Move bottom window

--- Buffer creation, navigation and management
vim.keymap.set("n", "<leader>bn", ":bnext<CR>") -- Move to next buffer
vim.keymap.set("n", "<leader>bp", ":bprev<CR>") -- Move to prev buffer
vim.keymap.set("n", "<leader>bd", ":bdelete<CR>") -- Delete buffer

--- Filetree keymaps
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- Toggle the filetree

--- END KEYMAPS   ---

