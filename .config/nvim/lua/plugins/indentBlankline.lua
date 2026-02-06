return {
	"lukas-reineke/indent-blankline.nvim",
	main = "ibl",
	---@module "ibl"
	---@type ibl.config
	config = function()
		require("ibl").setup({
			indent = {
				char = "⋮",
				-- char = "|",
				smart_indent_cap = false,
			},
			scope = {
				enabled = true,
			},
			exclude = {
				filetypes = { "help", "dashboard", "NvimTree" },
			},
		})
	end,
}
