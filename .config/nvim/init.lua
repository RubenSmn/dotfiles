-- load plugins
require("ruben.plugins-setup")

-- core settings
require("ruben.core.options")
require("ruben.core.colorscheme")

-- plugins
require("ruben.plugins.comment")
require("ruben.plugins.nvim-tree")
require("ruben.plugins.lualine")
require("ruben.plugins.telescope")
require("ruben.plugins.autopairs")
require("ruben.plugins.leap")
require("ruben.plugins.nvim-cmp")
require("ruben.plugins.treesitter")
require("ruben.plugins.gitsigns")
require("ruben.plugins.indent-line")

-- lsp plugins
require("ruben.plugins.lsp.mason")
require("ruben.plugins.lsp.lspsaga")
require("ruben.plugins.lsp.lspkind")
require("ruben.plugins.lsp.lspconfig")

require("ruben.core.keymaps")
