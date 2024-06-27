return {
	"nvim-lualine/lualine.nvim",
	enabled = true,
	lazy = false,
	config = function()
		require("lualine").setup({

			options = {
				icons_enabled = true,
				theme = "catppuccin",
				component_separators = "",
				section_separators = { left = "", right = "" },
				disabled_filetypes = {
					statusline = {},
					winbar = {},
				},
				ignore_focus = {},
				always_divide_middle = true,
				globalstatus = true,
				refresh = {
					statusline = 1000,
				},
			},
			sections = {
				lualine_a = { { "mode", separator = { left = "" }, right_padding = 2 } },
				lualine_b = { "branch", "diff", "diagnostics" },
				lualine_c = {
					{
						"filename",
						file_status = true,
						path = 1,
					},
				},
				lualine_x = { "encoding", "fileformat", "searchcount", "filetype" },
				lualine_y = { "progress","file_status" },
				lualine_z = {
					{ "location", separator = { right = "" }, left_padding = 2 },
				},
			},
			inactive_sections = {
				lualine_a = {},
				lualine_b = {},
				lualine_c = { "filename" },
				lualine_x = { "location" },
				lualine_y = {},
				lualine_z = {},
			},
			tabline = {},
			winbar = {},
			inactive_winbar = {},
			extensions = { "nvim-tree" },
		})
	end,
}
