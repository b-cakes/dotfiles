return {
    {
        'lukas-reineke/headlines.nvim',
        dependencies = "nvim-treesitter/nvim-treesitter",
        ft = "markdown",
        opts = {
            markdown = {
                headline_highlights = { "Headline1" },
                codeblock_highlight = "CodeBlock",
                dash_highlight = "Dash",
                dash_string = "_",
                quote_highlight = "Quote",
                quote_string = "┃",
                fat_headlines = false,
                fat_headline_upper_string = "▃",
                fat_headline_lower_s = "🬂",
            },
        },
    },
}
