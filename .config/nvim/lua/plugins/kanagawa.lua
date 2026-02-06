return {
	"rebelot/kanagawa.nvim",
	name = "kanagawa",
	priority = 1000,
	config = function()
		vim.cmd.colorscheme("kanagawa-wave")
			vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
			vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
			vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
			vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none" })
			vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
			vim.api.nvim_set_hl(0, "VertSplit", { bg = "none" })
			vim.api.nvim_set_hl(0, "WinSeparator", { bg = "none" })


		-- -- No transparency over ssh, to avoid plain black background
		-- if vim.env.SSH_CONNECTION or vim.env.SSH_CLIENT or vim.env.SSH_TTY then
		-- -- Standard theme settings
		-- vim.cmd.colorscheme("kanagawa-dragon")
		-- else
		-- vim.cmd.colorscheme("kanagawa-dragon")
		-- 	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
		-- 	vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
		-- 	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
		-- 	vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none" })
		-- 	vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
		-- 	vim.api.nvim_set_hl(0, "VertSplit", { bg = "none" })
		-- 	vim.api.nvim_set_hl(0, "WinSeparator", { bg = "none" })
		-- end
	end,
}
