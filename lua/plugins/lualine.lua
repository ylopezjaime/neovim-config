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
				section_separators = { left = "", right = "" },
				disabled_filetypes = {
					statusline = {},
					winbar = {},
				},
				ignore_focus = {},
				always_divide_middle = true,
				globalstatus = true,
				refresh = {
					statusline = 200,
				},
			},
			sections = {
				lualine_a = {
					{
						"mode",
						separator = { left = "", right = "" },
						right_padding = 2,
						icons_enabled = true,
						icon = " ",
					},
				},
				lualine_b = { { "b:gitsigns_head", icon = "", separator = { left = "" } }, "diff", "diagnostics" },
				lualine_c = {
					{
						"filename",
						file_status = true,
						path = 0,
						separator = { right = "" },
						left_padding = 2,
						color = { fg = "#F8FBF6", bg = "#896a98", style = "bold" },
					},
				},
				lualine_x = { "buffers", "searchcount", "filetype" },
				lualine_y = { "progress" },
				lualine_z = {
					{ "location", separator = { left = "", right = "" }, left_padding = 2 },
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
