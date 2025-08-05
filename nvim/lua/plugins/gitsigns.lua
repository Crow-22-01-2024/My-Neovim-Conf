-- plugins/gitsigns.lua

return {
  "lewis6991/gitsigns.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    require("gitsigns").setup {
      signs = {
        add          = { text = "│" },
        change       = { text = "│" },
        delete       = { text = "󰍵" },
        topdelete    = { text = "‾" },
        changedelete = { text = "~" },
        untracked    = { text = "┆" },
      },
      signcolumn = true,  -- Toggle with `:Gitsigns toggle_signs`
      numhl      = false,
      linehl     = false,
      word_diff  = false,
      watch_gitdir = {
        interval = 1000,
        follow_files = true
      },
      attach_to_untracked = true,
      current_line_blame = true,
      current_line_blame_opts = {
        virt_text = true,
        virt_text_pos = 'eol',
        delay = 400,
        ignore_whitespace = false,
      },
      current_line_blame_formatter = '<author>, <author_time:%R> · <summary>',
      preview_config = {
        border = 'rounded',
      },
      yadm = {
        enable = false
      },
    }
  end
}
