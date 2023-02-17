-- Functional wrapper for mapping custom keybindings
function map(mode, lhs, rhs, opts)
	local options = { noremap = true }
	if opts then
	        options = vim.tbl_extend("force", options, opts)
	end
	vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

vim.g.mapleader = " "
vim.g.maplocalleader = " "

local opt = vim.opt
opt.backspace = "2"
opt.showcmd = true
opt.laststatus = 2
opt.autowrite = true
opt.cursorline = true
opt.autoread = true

opt.tabstop = 8
opt.shiftwidth = 8
opt.shiftround = true
opt.expandtab = true

map("i", "jk", "<Esc>")
map("n", "<Leader>fb", ":Telescope file_browser<CR>")
map("n", "<Leader>t", ":ToggleTerm<CR>")
map("t", "<C-t>", "<Esc>:ToggleTerm<CR>")

function _G.set_terminal_keymaps()
        local opts = {buffer = 0}
        vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], opts)
        vim.keymap.set("t", "jk", [[<C-\><C-n>]], opts)
        vim.keymap.set("t", "<C-w>h", [[<Cmd>wincmd h<CR>]], opts)
        vim.keymap.set("t", "<C-w>j", [[<Cmd>wincmd j<CR>]], opts)
        vim.keymap.set("t", "<C-w>k", [[<Cmd>wincmd k<CR>]], opts)
        vim.keymap.set("t", "<C-w>l", [[<Cmd>wincmd l<CR>]], opts)
end

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")

