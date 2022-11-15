local status, lualine = pcall(require, "lualine")
if not status then
  return
end

local lualine_onedark = require("lualine.themes.onedark")

lualine.setup({
  options = {
    theme = lualine_onedark
  },
  sections = {
    lualine_b = {'branch', 'diff'},
    lualine_x = {'diagnostics'},
    lualine_y = {'filetype'}
  }
})

