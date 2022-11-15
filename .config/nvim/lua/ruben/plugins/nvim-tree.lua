local setup, nvimtree = pcall(require, "nvim-tree")

if not setup then
  return
end

-- recommneded settings for nvim-tree documentation
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

nvimtree.setup({
  view = {
    number = true,
    relativenumber = true,
  }
})
