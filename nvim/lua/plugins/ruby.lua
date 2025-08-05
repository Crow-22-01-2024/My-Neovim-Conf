vim.g["test#ruby#rspec#executable"] = "bundle exec rspec"
vim.cmd("let test#strategy = 'neovim'")


return {
  {
    "vim-test/vim-test",
    lazy = false,
    config = function()
      vim.g["test#strategy"] = "neovim"
      vim.keymap.set("n", "<leader>t", ":TestNearest<CR>", { desc = "Run nearest Ruby test" })
      vim.keymap.set("n", "<leader>T", ":TestFile<CR>", { desc = "Run all tests in file" })
    end,
  },
  {
    "tpope/vim-rails",
    lazy = true,
    ft = { "ruby", "eruby", "rails" },
    config = function()
      vim.cmd("runtime ftplugin/ruby.vim")
    end,
  },
  {
    "tpope/vim-endwise",
    lazy = true,
    ft = "ruby",
  },
  {
    "tpope/vim-bundler",
    lazy = true,
    cmd = { "Bundle", "Bopen" },
  },
  {
    "tpope/vim-rake",
    lazy = true,
    cmd = { "Rake", "Rakefile" },
    config = function()
      vim.keymap.set("n", "<leader>rr", ":Rake<CR>", { desc = "Run rake task" })
    end,
  },
}
