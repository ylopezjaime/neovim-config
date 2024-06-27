return {

  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  opts = {},
  indent_blankline = {
    enabled = true,
    scope_color = "lavender", -- catppuccin color (eg. `lavender`) Default: text
    colored_indent_levels = false,
  },
  config = function()
    require("ibl").setup()
  end,
}
