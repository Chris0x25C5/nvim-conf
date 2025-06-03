require("custom.plugins.markview")

vim.keymap.set("n", "<leader>mm", "<cmd>Markview<CR>", { buffer = true, desc = "Open MarkView preview" })
local ok, markview = pcall(require, "markview")
if not ok then
	vim.keymap.set("n", "<leader>mm", "<cmd>Markview<CR>", { buffer = true, desc = "Open MarkView preview" })
end
