return {
	"saghen/blink.cmp",
	dependencies = "rafamadriz/friendly-snippets",
	version = "*",
	opts = {
		appearance = {
			nerd_font_variant = "mono",
		},
		completion = {
			documentation = {
				auto_show = true,
				window = { border = "single" },
			},
			menu = {
				border = "single",
			},
		},
		keymap = {
			["<C-y>"] = { "accept", "fallback" },
		},
	},
}
