require('mason').setup({})
require('mason-lspconfig').setup({
    ensure_installed = {
        'sumneko_lua',
        'tsserver',
        'tailwindcss',
        'rust-analyzer',
        'clangd',
        'bashls',
        'pyright',
        'cmake-language-server',
    },
})
