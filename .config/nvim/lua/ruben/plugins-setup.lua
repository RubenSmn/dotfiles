-- auto install packer if not installed
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
    vim.cmd([[packadd packer.nvim]])
    return true
  end
  return false
end
local packer_bootstrap = ensure_packer() -- true if packer was just installed

-- autocommand that reloads neovim and installs/updates/removes plugins
-- when file is saved
vim.cmd([[ 
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]])

-- import packer safely
local status, packer = pcall(require, "packer")
if not status then
  return
end

-- add list of plugins to install
return packer.startup(function(use)
  -- packer can manage itself
  use "wbthomason/packer.nvim"

  --  One Dark colorscheme
  use "navarasu/onedark.nvim"

  --  functions that many plugins use
  --  sed by telescope
  use "nvim-lua/plenary.nvim"

  --  surround stuff
  use "tpope/vim-surround"

  --  ommenting with gc
  use "numToStr/Comment.nvim"

  -- file explorer
  use {
    "nvim-tree/nvim-tree.lua",
    requires = {
      "nvim-tree/nvim-web-devicons", -- optional, for file icons
    },
  }

  -- prettier
  use {
    "prettier/vim-prettier",
    run = "yarn install --frozen-lockfile --production",
    ft = { "javascript", "typescript", "typescriptreact", "css", "markdown", "vue", "html" }
  }

  -- statusline
  use("nvim-lualine/lualine.nvim")

  -- fuzzy finding w/ telescope
  use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" }) -- dependency for better sorting performance
  use({ "nvim-telescope/telescope.nvim", branch = "0.1.x" }) -- fuzzy finder

  -- neoclide for code completion, used this before built-in LSP
  -- use({ "neoclide/coc.nvim", branch = "release" })

  -- leap to travel faster in a file
  use "ggandor/leap.nvim"

  -- managing & installing lsp servers, linters & formatters
  use "williamboman/mason.nvim" -- in charge of managing lsp servers, linters & formatters
  use "williamboman/mason-lspconfig.nvim" -- bridges gap b/w mason & lspconfig

  -- snippets
  use "L3MON4D3/LuaSnip"
  use "saadparwaiz1/cmp_luasnip"

  -- autocompletion
  use "hrsh7th/cmp-buffer" -- nvim-cmp source for buffer words
  use "hrsh7th/cmp-path" -- nvim-cmp source for buffer paths
  use "hrsh7th/cmp-nvim-lsp" -- nvim-cmp source for neovim's built-in LSP
  use "hrsh7th/nvim-cmp" -- completion

  -- configuring lsp servers
  use "neovim/nvim-lspconfig" -- easily configure language servers
  use { "glepnir/lspsaga.nvim", branch = "main" } -- enhanced lsp uis
  use "jose-elias-alvarez/typescript.nvim" -- additional functionality for typescript server (e.g. rename file & update imports)
  use "onsails/lspkind.nvim" -- vs-code like icons for autocompletion

  -- TODO need to set this up
  -- formatting & linting
  -- use("jose-elias-alvarez/null-ls.nvim") -- configure formatters & linters
  -- use("jayp0521/mason-null-ls.nvim") -- bridges gap b/w mason & null-ls

  -- git
  use 'lewis6991/gitsigns.nvim'

  -- treesitter configuration
  use {
    "nvim-treesitter/nvim-treesitter",
    run = function()
      local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
      ts_update()
    end,
  }

  use "lukas-reineke/indent-blankline.nvim"

  -- auto closing
  use("windwp/nvim-autopairs") -- autoclose parens, brackets, quotes, etc...
  -- use({ "windwp/nvim-ts-autotag", after = "nvim-treesitter" }) -- autoclose tags

  if packer_bootstrap then
    require("packer").sync()
  end
end)
