local db = require('dashboard')

local weekday = os.date('%A') -- Ej. "Saturday"

local gothic_header = {
  '╭─────────────────────────────────────────────╮',
  '│           🕯️ Ruby Grimoire                  │',
  '│       ✞ Summoning ritual of code ✞          │',
  '│     ⚰️ Environment seal: Neovim + Zsh       │',
  '│   ⛧ Loading forbidden symbols...            │',
  '╰─────────────────────────────────────────────╯',
  '',
  '📅 Today is : ' .. weekday,
  '',
}




db.setup({
  theme = 'doom',
  config = {
    header = gothic_header,
    center = {
      {
        icon = '  ',
        desc = 'File Explorer',
        action = 'Telescope find_files',
        key = 'f',
      },
      {
        icon = '  ',
        desc = 'New File',
        action = 'ene | set filetype=ruby',
        key = 'r',
      },
      {
        icon = '  ',
        desc = 'Open Terminal',
        action = 'term',
        key = 't',
      },
      {
        icon = '  ',
        desc = 'Neovim Conf',
        action = 'edit ~/.config/nvim/init.lua',
        key = 'c',
      },
    },

    footer = function()
      local distro = vim.loop.os_uname().sysname
      return { '🦇 System: ' .. distro .. ' • Hour: ' .. os.date('%H:%M:%S') }
    end,
  },
})
