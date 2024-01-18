return {
  -- not bad, a little flat.
  -- 'svrana/neosolarized.nvim',
  -- dependencies = 'tjdevries/colorbuddy.nvim',
  -- config = function ()
  --   require('neosolarized').setup({
  --     comment_italics = true,
  --     background_set = true,
  --   })
  -- end,
  --
  -- Colours too flat.
  -- "craftzdog/solarized-osaka.nvim",
  -- lazy = false,
  -- priority = 1000,
  -- opts = {},
  --
  -- Colours broken after reboot (?).
  'ishan9299/nvim-solarized-lua',
  config = function()
    vim.o.background = 'dark'
    vim.cmd.colorscheme 'solarized'
  end,
  --
  -- 'shaunsingh/solarized.nvim',
  --
  -- 'maxmx03/solarized.nvim',
  -- lazy = false,
  -- priority = 1000,
  -- config = function()
  --   vim.o.background = 'dark'
  --   vim.cmd.colorscheme 'solarized'
  -- end,
}
