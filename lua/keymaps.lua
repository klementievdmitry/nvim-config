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
