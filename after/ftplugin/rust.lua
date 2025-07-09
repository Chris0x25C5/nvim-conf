local bufnr = vim.api.nvim_get_current_buf()

vim.keymap.set("n", "<leader>ma", function()
	vim.cmd.RustLsp("codeAction") -- supports rust-analyzer's grouping
	-- or vim.lsp.buf.codeAction() if you don't want grouping.
end, { desc = "code action", silent = true, buffer = bufnr })

vim.keymap.set("n", "K", function()
	vim.cmd.RustLsp({ "hover", "actions" })
end, { silent = true, buffer = bufnr })

vim.keymap.set("n", "<leader>mr", function()
	vim.cmd.RustLsp("run")
end, { desc = "Run" })

vim.keymap.set("n", "<leader>mR", function()
	vim.cmd.RustLsp("runnables")
end, { desc = "Runnables" })

vim.keymap.set("n", "<leader>mt", function()
	vim.cmd.RustLsp("testables")
end, { desc = "Run testables" })

vim.keymap.set("n", "<leader>mg", function()
	vim.cmd.RustLsp("relatedDiagnostics")
end, { desc = "jump to related diagnostic" })

vim.keymap.set("n", "<leader>md", function()
	vim.cmd.RustLsp("renderDiagnostic")
end, { desc = "Diagnostic" })

vim.keymap.set("n", "<leader>me", function()
	vim.cmd.RustLsp("explainError")
end, { desc = "Explain Error" })

vim.keymap.set("n", "<leader>mm", function()
	vim.cmd.RustLsp("expandMacro")
end, { desc = "Expand Macro" })

vim.keymap.set("n", "<leader>mc", function()
	vim.cmd.RustLsp("openCargo")
end, { desc = "open Cargo.toml" })

vim.keymap.set("n", "<leader>mD", function()
	vim.cmd.RustLsp("openDocs")
end, { desc = "open docs.rs documentation" })

vim.keymap.set("n", "<leader>mp", function()
	vim.cmd.RustLsp("parentModule")
end, { desc = "open parent Module" })

vim.keymap.set("n", "<leader>mJ", function()
	vim.cmd.RustLsp("joinLines")
end, { desc = "join lines" })

vim.keymap.set("n", "<leader>mk", ":RustLsp moveItem up", { desc = "move item up" })
vim.keymap.set("n", "<leader>mj", ":RustLsp moveItem down", { desc = "move item down" })
