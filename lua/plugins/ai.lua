return {
	{
		"milanglacier/minuet-ai.nvim",
		event = "InsertEnter",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			require("minuet").setup({
				provider = "gemini",
				provider_options = {
					gemini = {
						model = "gemini-2.0-flash",
						optional = {
							generationConfig = {
								maxOutputTokens = 256,
								thinkingConfig = {
									thinkingBudget = 0,
								},
							},
						},
					},
				},
				virtualtext = {
					auto_trigger_ft = { "*" },
					keymap = {
						accept = "<A-a>",
						accept_line = "<A-l>",
						next = "<A-]>",
						prev = "<A-[>",
						dismiss = "<A-e>",
					},
				},
			})
		end,
	},
}
