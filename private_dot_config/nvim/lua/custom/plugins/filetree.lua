-- Unless you are still migrating, remove the deprecated commands from v1.x
vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

return {
  "nvim-neo-tree/neo-tree.nvim",
  version = "*",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
  },
  opts = {
    vim.keymap.set("n", "<leader>n", ":Neotree toggle<CR>", { desc = "Toggles Neotree file explorer." })

    -- If we want more sophisticated actions, we can do them like this:
    --
    -- vim.keymap.set('n', '<leader>n', function()
    --   require('neo-tree.command').execute({
    --     action = "show",
    --     toggle = "true",
    --   })
    --   end, { desc = 'Toggles Neotree file explorer.' })
  },
  config = function ()
    require("neo-tree").setup {}
  end,
}
