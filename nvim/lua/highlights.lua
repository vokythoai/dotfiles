vim.opt.cursorline = true
vim.opt.termguicolors = true
vim.opt.winblend = 0
vim.opt.wildoptions = 'pum'
vim.opt.pumblend = 5
vim.opt.background = 'dark'

-- Set colorscheme, set termgui 256, set background transparent
vim.cmd [[
  colorscheme nightfox
  set termguicolors
  hi Normal guibg=NONE ctermbg=NONE
]]
