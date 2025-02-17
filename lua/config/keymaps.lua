-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymap = vim.keymap

keymap.set("n", "<C-a>", "gg<S-v>G")
keymap.set(
  "n",
  "<leader>fa",
  ":lua require'telescope.builtin'.lsp_dynamic_workspace_symbols(require('telescope.themes').get_ivy({})) <Enter>"
)
