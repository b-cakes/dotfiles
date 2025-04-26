return {
    {
        'echasnovski/mini.completion',
        version = false,
        dependencies = {
            'echasnovski/mini.snippets',
        },
        config = function()
            require('mini.completion').setup({})
        end
    },

    {
        'echasnovski/mini.snippets',
        version = false,
        dependencies = { 'rafamadriz/friendly-snippets' },
        config = function()
            local gen_loader = require('mini.snippets').gen_loader
            require('mini.snippets').setup({
                snippets = {
                    gen_loader.from_lang(),
                },
            })
        end
    },
}
