local status, indentLine = pcall(require, "indent_blankline")
if not status then
  return
end

indentLine.setup {
  char = '¦',
}
