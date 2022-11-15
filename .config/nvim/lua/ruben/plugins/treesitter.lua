local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
  return
end

treesitter.setup {
  highlight = {
    enable = true,
    disable = {}
  },
  indent = {
    enable = true,
    disable = {}
  },
  ensure_installed = {
    'javascript',
    'typescript',
    'tsx',
    'markdown',
    'json',
    'html',
    'css',
    'lua',
  },
  autotag = {
    enable = true,
  },
  auto_install = true
}
