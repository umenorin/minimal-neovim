-- Lightweight yet powerful formatter plugin for Neovim
-- https://github.com/stevearc/conform.nvim

return {
	"stevearc/conform.nvim",
	event = { "BufWritePre" },
	cmd = { "ConformInfo" },
	keys = {
		{
			"<leader>gf",
			function()
				require("conform").format({ async = true })
			end,
			mode = { "n", "v" },
			desc = "[G]o [F]ormat",
		},
	},

	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			-- Use prettierd first (faster daemon), fallback to prettier
			javascript = { "prettierd", "prettier", stop_after_first = true },
			typescript = { "prettierd", "prettier", stop_after_first = true },
			javascriptreact = { "prettierd", "prettier", stop_after_first = true },
			typescriptreact = { "prettierd", "prettier", stop_after_first = true },
			css = { "prettierd", "prettier", stop_after_first = true },
			html = { "prettierd", "prettier", stop_after_first = true },
			json = { "prettierd", "prettier", stop_after_first = true },
			yaml = { "prettierd", "prettier", stop_after_first = true },
			markdown = { "prettierd", "prettier", stop_after_first = true },
			go = { "goimports" },
		},
		-- Default options for format()
		default_format_opts = {
			lsp_format = "fallback",
		},
		-- Uncomment to format on save:
		-- format_on_save = {
		-- 	timeout_ms = 500,
		-- 	lsp_format = "fallback",
		-- },
	},
}
