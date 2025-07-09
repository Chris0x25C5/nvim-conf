return {
	"coffebar/neovim-project",
	opts = {
		projects = { -- define project roots
			"~/dev/Projects/*",
			"~/dev/Writing/*",
			"~/dev/notes/*",
			"~/AppData/Local/nvim/",
			"~/.config/nvim/",
		},
		patterns = {
			"^~/dev/Writing/",
		},
		picker = {
			type = "telescope", -- or "fzf-lua"
		},
	},
	init = function()
		-- enable saving the state of plugins in the session
		vim.opt.sessionoptions:append("globals") -- save global variables that start with an uppercase letter and contain at least one lowercase letter.
	end,
	dependencies = {
		{ "nvim-lua/plenary.nvim" },
		-- optional picker
		{ "nvim-telescope/telescope.nvim" },
		-- optional picker
		{ "ibhagwan/fzf-lua" },
		{ "Shatur/neovim-session-manager" },
	},
	lazy = false,
	priority = 100,
	keys = {
		{ "<leader>sp", ":NeovimProjectDiscover<CR>", desc = "Project Discovery", mode = "n" },
		{ "<leader>sP", ":NeovimProjectHistory<CR>", desc = "Project History", mode = "n" },
	},
}
