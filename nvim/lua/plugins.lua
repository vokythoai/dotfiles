local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'EdenEast/nightfox.nvim'
  use 'nvim-lualine/lualine.nvim' -- Statusline
  use 'nvim-lua/plenary.nvim' -- Common utilities
  use 'onsails/lspkind-nvim' -- vscode-like pictograms
  use 'hrsh7th/cmp-buffer' -- nvim-cmp source for buffer words
  use 'hrsh7th/cmp-nvim-lsp' -- Completion
  use 'hrsh7th/cmp-path' --- Completion
  use 'hrsh7th/cmp-cmdline' --- Completion
  use 'hrsh7th/nvim-cmp' -- Completion
  use 'neovim/nvim-lspconfig' -- LSP
  use 'jose-elias-alvarez/null-ls.nvim' -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua
  use 'MunifTanjim/prettier.nvim' -- Prettier plugin for Neovim's built-in LSP client
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
  use 'glepnir/lspsaga.nvim' -- LSP UIs
  --use({
  --  "glepnir/lspsaga.nvim",
  --  opt = true,
  --  branch = "main",
  --  event = "LspAttach",
  --  requires = {
  --    {"nvim-tree/nvim-web-devicons"},
  --    --Please make sure you install markdown and markdown_inline parser
  --    {"nvim-treesitter/nvim-treesitter"}
  --  }
  --})
  use 'L3MON4D3/LuaSnip'
  use 'SirVer/ultisnips'
  use 'honza/vim-snippets'
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  use 'RRethy/nvim-treesitter-endwise' -- end wise for ruby lua python ...
  use 'kyazdani42/nvim-web-devicons' -- File icons
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'
  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'
  use 'norcalli/nvim-colorizer.lua'
  use 'folke/zen-mode.nvim'
  use({
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
  })
  use 'akinsho/nvim-bufferline.lua'
  -- use 'github/copilot.vim'
  use 'lewis6991/gitsigns.nvim'
  use 'dinhhuy258/git.nvim' -- For git blame & browse
  use 'lukas-reineke/indent-blankline.nvim' -- For blankline indent
  use 'ggandor/lightspeed.nvim' --- for faster navigation
  use 'tpope/vim-surround'
  use 'tpope/vim-rails' -- Ruby on Rails language
  use 'vim-ruby/vim-ruby' -- Ruby on Rails language
  use 'tpope/vim-endwise' -- Ruby on Rails language
  use 'fatih/vim-go' -- Go language
  use 'sebdah/vim-delve' -- Go language
  use 'tpope/vim-commentary' -- Go language
end)
