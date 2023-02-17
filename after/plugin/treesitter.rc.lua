require("nvim-treesitter.configs").setup({
    ensure_installed = {
        "c",
        "cpp",
        "lua",
        "vim",
        "rust",
        "help",
        "cmake",
    },
    sync_install = true,
    auto_install = true,
    highlight = {
        enable = true,
    },
})
