local status, blank_line = pcall(require, "indent_blankline")
if (not status) then return end

vim.cmd [[highlight IndentBlanklineIndent1 guifg=#E06C75 gui=nocombine]]

blank_line.setup {
  show_current_context = true,
  show_current_context_start = true,
  show_end_of_line = true,
  char_hightlight_list = {
    "IndentBlanklineIndent1"
  }
}

