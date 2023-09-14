return {
  "tpope/vim-fugitive",
  cmd = "Git",
  keys = {
    { "<leader>gs", "<cmd>Git<cr>", desc = "Git fugitive" },
    { "<leader>gcm", "<cmd>Git commit<cr>", desc = "Git commit" },
    { "<leader>gd", "<cmd>Gdiffsplit<cr>", desc = "Git diff" },
  },
}
