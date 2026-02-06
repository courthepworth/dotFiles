return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("lualine").setup({
				sections = {
        -- Tinkering with tabline below
				  lualine_a = { 'mode' },
				  -- lualine_b = { { 'buffers', show_filename_only = true, mode = 2 } },
				  -- lualine_c = {},
				  lualine_x = { 'encoding', 'fileformat', 'filetype' },
				  lualine_y = { 'progress' },
				  lualine_z = { 'location' },
				},
				tabline = {
					lualine_a = { { "buffers", show_filename_only = true, mode = 2 } },
					lualine_b = { "branch" },
					lualine_c = { "filename" },
					lualine_x = {},
					lualine_y = {},
					lualine_z = { "tabs" },
				},
			options = {
				theme = "dracula",
			},
		})
	end,
}
