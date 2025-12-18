local keymap = vim.keymap.set

-- Editor
keymap("v", "<leader>y", '"+y', { desc = "Copy to system clipboard" })
keymap("v", "<leader>p", '"+p', { desc = "Paste to system clipboard" })
keymap("n", "<leader>Y", ":%y+<CR>", { desc = "Copy entire buffer to system clipboard" })

-- LSP
keymap("n", "K", vim.lsp.buf.hover, {})
keymap("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
keymap({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "See code actions" })
keymap("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename variables" })

-- Neotree
keymap("n", "<leader>e", "<Cmd>Neotree toggle<CR>")

-- Telescope
local telescope_builtin = require("telescope.builtin")
keymap("n", "<leader>ff", telescope_builtin.find_files, { desc = "Telescope find files" })
keymap("n", "<leader>fg", telescope_builtin.live_grep, { desc = "Telescope live grep" })
keymap("n", "<C-p>", telescope_builtin.git_files, { desc = "Telescope find git files" })
