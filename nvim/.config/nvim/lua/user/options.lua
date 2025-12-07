--- BEGIN OPTIONS ---

--- Line behavior
vim.opt.number = true -- Enable line numbers
vim.opt.signcolumn = "yes" -- Enable sign column

--- Tab and indentation behavior
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.smartindent = true

--- Split behavior
vim.opt.splitbelow = true
vim.opt.splitright = true

--- Editor behavior
vim.opt.wrap = false -- Disable line wrap
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8

--- Mouse behavior
vim.opt.mouse = "a"

--- Search behavior
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.incsearch = true
vim.opt.hlsearch = true

--- Undo, backup and restore behavior
vim.opt.undofile = true
vim.opt.backup = false -- rely on git directly
vim.opt.writebackup = false
vim.opt.swapfile = false -- disable swap file, revisit if required

-- Responsiveness behavior
vim.opt.updatetime = 250
vim.opt.timeoutlen = 500 -- key combo timeout

-- Clipboard behavior
vim.opt.clipboard = "unnamedplus"

--- File behavior
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"
vim.opt.autoread = true

--- Colors behavior
vim.opt.termguicolors = true

--- END OPTIONS   ---

