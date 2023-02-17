local fb_actions = require("telescope").extensions.file_browser.actions
local builtin = require("telescope.builtin")

require("telescope").load_extension("file_browser")

vim.keymap.set("n", "<Space>fb", ":Telescope file_browser<CR>", { silent = true })

vim.keymap.set("n", "<C-p>", builtin.find_files, { silent = true })
vim.keymap.set("n", "<Space><Space>", builtin.oldfiles, { silent = true })
vim.keymap.set("n", "<Space>fg", builtin.live_grep, { silent = true })
vim.keymap.set("n", "<Space>fh", builtin.help_tags, { silent = true })
