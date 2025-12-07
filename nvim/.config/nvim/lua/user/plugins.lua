--- Setup lazy.nvim for package management ---
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git", "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath,
    })
end

vim.opt.runtimepath:prepend(lazypath)

require("lazy").setup({
    spec = {
        { import = "user.plugins.ui" }, -- UI related plugins
        { import = "user.plugins.navigation" }, -- navigation related plugins
        { import = "user.plugins.treesitter" }, -- treesitter related plugins
        { import = "user.plugins.editing" }, -- editing related plugins
        { import = "user.plugins.filetree" }, -- filetree related plugins
        { import = "user.plugins.markdown" }, -- markdown related plugins
        { import = "user.plugins.lsp" }, -- LSP related plugins
        { import = "user.plugins.cmp" }, -- CMP related plugins
        { import = "user.plugins.dap" }, -- DAP related plugins
        { import = "user.plugins.git" }, -- Git related plugins
    },
})

--- End lazy.nvim setup ---

