require("toggleterm").setup({})

vim.keymap.set("n", "<Leader>t", ":ToggleTerm<CR>", { silent = true })
vim.keymap.set("t", "<C-t>", "<Esc>:ToggleTerm<CR>", { silent = true })

