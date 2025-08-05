set number
set relativenumber

let mapleader = " "

call plug#begin()

"Themes 
Plug 'Mofiqul/vscode.nvim'

"Miscellaneus : Lualine and some shit
Plug 'nvim-lualine/lualine.nvim'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'windwp/nvim-autopairs'

"Mason
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'

"Nvim-cmp
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'


" === Explorador y Búsqueda ===
Plug 'nvim-tree/nvim-tree.lua'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.8' }
" or                                , { 'branch': '0.1.x' }

"Treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

"Git tools
Plug 'lewis6991/gitsigns.nvim'


"Interactive Menu
Plug 'nvimdev/dashboard-nvim'

"Ruby 
Plug 'vim-test/vim-test'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-rake'



call plug#end()

"Scripts
lua require('shortcuts')
lua require('telescope_shortcts')
lua require('plugins.vscode_theme')
lua require('plugins.lualine')
lua require('plugins.autopairs')
lua require('plugins.lsp')
lua require('plugins.completion')
lua require('plugins.ruby')
lua require('plugins.dashboard')
lua require('plugins.telescope')
lua require('plugins.nvim_tree')
lua require('plugins.gitsigns')
lua require('plugins.treesitter')

colorscheme vscode
