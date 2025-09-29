-- init.lua

-- ========================
-- Bootstrap lazy.nvim
-- ========================
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- ========================
-- Plugins
-- ========================
require("lazy").setup({
  -- ========================
  -- UI & Themes
  -- ========================
  {
    'projekt0n/github-nvim-theme',
    name = 'github-theme',
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      require('github-theme').setup({
        -- ...
      })

      vim.cmd('colorscheme github_dark_dimmed')
    end,
  },
  { 'EdenEast/nightfox.nvim' },
  { 'rose-pine/neovim', name = 'rose-pine-moon' },
  { 'rebelot/kanagawa.nvim' },
  { 'nvim-lualine/lualine.nvim', dependencies = { 'nvim-tree/nvim-web-devicons' } },
  { 'nvim-tree/nvim-web-devicons' },

  -- ========================
  -- Fuzzy Finder & Utilities
  -- ========================
  { 'nvim-telescope/telescope.nvim', tag = '0.1.5', dependencies = { 'nvim-lua/plenary.nvim' } },
  { 'theprimeagen/harpoon' },
  { 'mbbill/undotree' },
  { 'kdheepak/lazygit.nvim', dependencies = { 'nvim-lua/plenary.nvim' } },
  { 'akinsho/toggleterm.nvim', version = "*", config = true },
  { 'elentok/format-on-save.nvim' },
  { 'APZelos/blamer.nvim' },
  { 'sindrets/diffview.nvim' },
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
  { "nvim-treesitter/playground" },
  { "nvim-treesitter/nvim-treesitter-context" },
  { "windwp/nvim-ts-autotag" },

  -- ========================
  -- LSP & Autocompletion
  -- ========================
  { 'williamboman/mason.nvim' },
  { 'williamboman/mason-lspconfig.nvim' },
  { 'neovim/nvim-lspconfig' },
  { 'VonHeikemen/lsp-zero.nvim', branch = 'v3.x' },
  { 'hrsh7th/nvim-cmp' },
  { 'hrsh7th/cmp-nvim-lsp' },
  { 'saadparwaiz1/cmp_luasnip' },
  {
    "L3MON4D3/LuaSnip",
    version = "v2.*",
    build = "make install_jsregexp", -- ensure `make` and Node.js are installed
  },
  {
    'ray-x/lsp_signature.nvim',
    event = "VeryLazy",
    opts = {}, -- lazy.nvim will automatically call setup(opts)
  },

  -- ========================
  -- Editing Enhancements
  -- ========================
  {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    config = true,
  },
  {
    "numToStr/Comment.nvim",
    opts = {},
    lazy = false,
  },

  -- ========================
  -- Trouble (Diagnostics)
  -- ========================
  {
    "folke/trouble.nvim",
    opts = {},
    cmd = "Trouble",
    keys = {
      { "<leader>tt", "<cmd>Trouble diagnostics toggle<cr>", desc = "Diagnostics (Trouble)" },
      { "<leader>tT", "<cmd>Trouble diagnostics toggle filter.buf=0<cr>", desc = "Buffer Diagnostics" },
      { "<leader>cs", "<cmd>Trouble symbols toggle focus=false<cr>", desc = "Symbols (Trouble)" },
      { "<leader>cl", "<cmd>Trouble lsp toggle focus=false win.position=right<cr>", desc = "LSP Definitions/References" },
      { "<leader>xL", "<cmd>Trouble loclist toggle<cr>", desc = "Location List" },
      { "<leader>xQ", "<cmd>Trouble qflist toggle<cr>", desc = "Quickfix List" },
    },
  },

  -- ========================
  -- Fun / Misc
  -- ========================
  { 'ThePrimeagen/vim-be-good', lazy = true },
  { 'ThePrimeagen/vim-apm', lazy = true },
})
