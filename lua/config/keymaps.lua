-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local function lazygit_root()
  Snacks.lazygit({ cwd = LazyVim.root.git() })
end

local function lazygit_cwd()
  Snacks.lazygit()
end

vim.api.nvim_create_user_command("LazyGit", lazygit_root, { desc = "Open Lazygit at the git root" })
vim.api.nvim_create_user_command("LazyGitCwd", lazygit_cwd, { desc = "Open Lazygit in the current working directory" })

vim.keymap.set("n", "<leader>gg", lazygit_root, { desc = "Lazygit (Root Dir)" })
vim.keymap.set("n", "<leader>gG", lazygit_cwd, { desc = "Lazygit (cwd)" })
