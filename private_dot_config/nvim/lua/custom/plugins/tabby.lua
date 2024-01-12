return {
  'nanozuki/tabby.nvim',
  event = 'VimEnter',
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    -- configs...
    local theme = {
      -- fill = 'TabLineFill',
      fill = { bg='#002b36', fg='#657b83' },
      -- Also you can do this: fill = { fg='#f2e9de', bg='#907aa9', style='italic' }
      -- head = 'TabLine',
      head = { bg='#002b36', fg='#657b83' },
      current_tab = 'TabLineSel',
      -- tab = 'TabLine',
      tab = { bg='#002b36', fg='#657b83' },
      win = 'TabLine',
      tail = 'TabLine',
    }
    require('tabby.tabline').set(function(line)
      return {
        {
          { '  ', hl = theme.head },
          line.sep(' ', theme.head, theme.fill),
        },
        line.tabs().foreach(function(tab)
          local hl = tab.is_current() and theme.current_tab or theme.tab
          return {
            -- line.sep(' ', hl, theme.fill),
            -- tab.is_current() and '●' or '',
            ' ',
            tab.number(),
            tab.name(),
            tab.close_btn('✕  '),
            -- line.sep(' ', hl, theme.fill),
            hl = hl,
            margin = ' ',
          }
        end),
        line.spacer(),
        line.wins_in_tab(line.api.get_current_tab()).foreach(function(win)
          return {
            line.sep(' ', theme.tab, theme.fill),
            -- win.is_current() and '●' or '',
            ' ',
            win.file_icon(),
            ' ',
            win.buf_name(),
            -- line.sep(' ', theme.win, theme.fill),
            hl = theme.tab,
            ' ',
            margin = '',
          }
        end),
        -- {
        --   -- line.sep(' ', theme.tail, theme.fill),
        --   { '  ', hl = theme.tail },
        -- },
        hl = theme.fill,
      }
    end)
  end,
}
