-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("config") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "--branch=stable",
    "https://github.com/folke/lazy.nvim.git",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Set leader key to space
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Detect system dark mode (macOS)
local function is_dark_mode()
  local handle = io.popen('defaults read -g AppleInterfaceStyle 2>/dev/null')
  local result = handle:read("*a")
  handle:close()
  return result:match("Dark") ~= nil
end

-- Pick theme based on system mode
current_flavour = "macchiato"
-- local current_flavour = is_dark_mode() and "macchiato" or "latte"

-- Setup plugins
require("lazy").setup({
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000, --make sure this loads early, to avoid color flashing
    config = function()
      require("catppuccin").setup({
        flavour = current_flavour,
        integrations = {
          telescope = true,
          treesitter = true,
        },
      })
    end,
  },
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" }
  },
  {
	  "scrooloose/nerdtree",
  },
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate"
  },
  -- {
  --   "olimorris/codecompanion.nvim",
  --   opts = {},
  --   dependencies = {
  --     "nvim-lua/plenary.nvim",
  --     "nvim-treesitter/nvim-treesitter",
  --   },
  -- },
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("lualine").setup()
    end,
  },
})

-- Apply the Catppuccin colorscheme
vim.cmd.colorscheme "catppuccin"

-- Telescope shortcuts
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
-- Toggle NERDTree
vim.keymap.set('n', '<C-n>', ':NERDTreeToggle<CR>', { desc = 'Toggle NERDTree' })
