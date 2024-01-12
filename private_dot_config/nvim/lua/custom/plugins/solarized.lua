return {
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
