require('filetype').setup({
    overrides = {
        complex = {
            ['SCons*'] = 'python',
        },
    },
})
