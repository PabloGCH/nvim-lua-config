--CONFIGURATION OF FLOAT WINDOW
local gwidth = vim.api.nvim_list_uis()[1].width
local width = 120
local height = 30






require'nvim-tree'.setup{
  git = {
    ignore = false
  },
  actions = {
    open_file = {
      window_picker = {
        enable = false
      }
    }
  },
  renderer = {
    root_folder_label = false,
    indent_width = 3,
    indent_markers = {
      enable = true,
      inline_arrows = true,
      icons = {
        edge = "│",
      },
    },
  },
  view = {
    side = "left",
    preserve_window_proportions = false,
    number = false,
    relativenumber = false,
    signcolumn = "yes",
    float = {
      enable = true,
      quit_on_focus_loss = true,
      open_win_config = {
        relative = "editor",
        border = "rounded",
        width = width,
        height = height,
        row = 1,
        col = (gwidth - width) / 2
      },
    },
  },
}
require'nvim-web-devicons'.setup{
  -- your personnal icons can go here (to override)
  -- you can specify color or cterm_color instead of specifying both of them
  -- DevIcon will be appended to `name`
  override = {
    zsh = {
      icon = "",
    }
  };
  -- globally enable default icons (default to false)
  -- will get overriden by `get_icons` option
  default = true;
}
