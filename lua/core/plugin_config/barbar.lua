vim.g.barbar_auto_setup = false

require('barbar').setup {
  animation = true,
  auto_hide = false,

  tabpages = true,

  clickable = true,

  exclude_ft = { 'javascript' },
  exclude_name = { 'package.json' },

  focus_on_close = 'left',

  hide = { extensions = true, inactive = true },

  highlight_alternate = false,

  highlight_inactive_file_icons = false,

  highlight_visible = true,

  icons = {
    buffer_index = false,
    buffer_number = false,
    button = '',
    diagnostics = {
      [vim.diagnostic.severity.ERROR] = { enabled = true, icon = 'ﬀ' },
      [vim.diagnostic.severity.WARN] = { enabled = false },
      [vim.diagnostic.severity.INFO] = { enabled = false },
      [vim.diagnostic.severity.HINT] = { enabled = true },
    },
    gitsigns = {
      added = { enabled = true, icon = '+' },
      changed = { enabled = true, icon = '~' },
      deleted = { enabled = true, icon = '-' },
    },
    filetype = {
      custom_colors = false,

      enabled = true,
    },
    separator = { left = '▎', right = '' },

    separator_at_end = true,

    modified = { button = '●' },
    pinned = { button = '', filename = true },

    preset = 'default',

    alternate = { filetype = { enabled = false } },
    current = { buffer_index = true },
    inactive = { button = '×' },
    visible = { modified = { buffer_number = false } },
  },

  insert_at_end = false,
  insert_at_start = false,

  maximum_padding = 1,

  minimum_padding = 1,

  maximum_length = 30,

  minimum_length = 0,

  semantic_letters = true,

  sidebar_filetypes = {
    NvimTree = true,
    undotree = {
      text = 'undotree',
      align = 'center',
    },
    ['neo-tree'] = { event = 'BufWipeout' },
    Outline = { event = 'BufWinLeave', text = 'symbols-outline', align = 'right' },
  },

  letters = 'asdfjkl;ghnmxcvbziowerutyqpASDFJKLGHNMXCVBZIOWERUTYQP',

  no_name_title = nil,
}
