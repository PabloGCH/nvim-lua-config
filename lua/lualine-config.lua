local custom = require'lualine.themes.ayu_dark'

require('lualine').setup {
	options = {
		theme = custom,
		disabled_filetypes = {'NvimTree'}
	},
	extensions = {'nvim-tree'},
}
