local fb_actions = require("telescope").extensions.file_browser.actions

require("telescope").load_extension("file_browser")

vim.keymap.set("n", "<Leader>fb", ":Telescope file_browser<CR>", { silent = true })
