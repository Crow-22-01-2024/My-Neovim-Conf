-- nvimtree.lua - Configuración para el explorador de archivos en Neovim

return {
  "nvim-tree/nvim-tree.lua",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons", -- Asegura que los íconos estén habilitados
  },
  config = function()
    require("nvim-tree").setup({
      sort_by = "case_sensitive",
      view = {
        width = 30,
        side = "left",
        preserve_window_proportions = true,
      },
      renderer = {
        group_empty = true,
        highlight_git = true,
        icons = {
          show = {
            file = true,
            folder = true,
            folder_arrow = true,
            git = true,
          },
        },
      },
      filters = {
        dotfiles = false,
        custom = { ".DS_Store", "node_modules" },
      },
      git = {
        enable = true,
        ignore = false,
      },
      actions = {
        open_file = {
          quit_on_open = false,
        },
      },
    })

    -- Atajos para abrir/cerrar nvim-tree
    vim.keymap.set("n", "<leader>tt", "<cmd>NvimTreeToggle<CR>", { desc = "🔍 Toggle NvimTree" })
    vim.keymap.set("n", "<leader>tf", "<cmd>NvimTreeFocus<CR>", { desc = "🗂️ Focus NvimTree" })
  end,
}
