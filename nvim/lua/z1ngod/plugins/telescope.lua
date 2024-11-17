return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")
    telescope.setup({
      defaults = {
        path_display = { "smart" },
        mappings = {
          i = { ["<C-k>"] = actions.move_selection_previous, ["<C-j>"] = actions.move_selection_next },
        },
      },
    })
    telescope.load_extension("fzf")
    local keymap = vim.keymap
    keymap.set(
      "n",
      "<leader>ff",
      "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_ivy({}))<cr>",
      { desc = "Fuzzy find files in cwd" }
    )
    keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd" })
    keymap.set(
      "n",
      "<leader>fr",
      "<cmd>lua require'telescope.builtin'.oldfiles(require('telescope.themes').get_dropdown({ previewer = false }))<cr>",
      { desc = "Find recent files" }
    )
    keymap.set("n", "<leader>fc", "<cmd>Telescope live_grep<cr>", { desc = "Find string under cursor in cwd" })
    keymap.set(
      "n",
      "<leader>fb",
      "<cmd>lua require'telescope.builtin'.buffers(require('telescope.themes').get_dropdown({ previewer = false }))<cr>",
      { desc = "Find buffers" }
    )
  end,
}
