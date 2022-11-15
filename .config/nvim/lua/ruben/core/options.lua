local opt = vim.opt

-- line numbers
opt.relativenumber = true
opt.number = true

-- tabs & indentation
opt.autoindent = true
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true

-- search settings
opt.ignorecase = true
opt.smartcase = true

-- cursor
opt.guicursor = "n-v-c-i:block"

-- appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

opt.path:append { '**' } -- finding files - search down subfolders
opt.wildignore:append { '*/node_modules/*' }

-- clipboard
-- opt.clipboard:append("unnamedplus")
