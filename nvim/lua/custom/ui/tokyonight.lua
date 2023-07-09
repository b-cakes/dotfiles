return {

    { -- tokyonight
        'folke/tokyonight.nvim',
        priority = 1000,
        config = function ()
            require('tokyonight').setup({
                style = 'storm',
                styles = {
                },
                hide_inactive_statusline = false,
                lualine_bold = true,
                on_highlights = function(hl, c)
                    -- local fg_pu = '#29a4bd'
                    local bg_pu_select = '#2e3c64'
                    local bg_pu = '#2f344c'
                    hl.Pmenu = {bg = bg_pu}
                    hl.PmenuSel = {bg = bg_pu_select}
                    -- hl.NormalFloat = {bg = bg_pu}
                    -- hl.FloatBorder = {bg = bg_pu}
                    -- hl.CursorLine = {bg = bg_pu}
                end,
            })
            vim.cmd.colorscheme 'tokyonight'
        end,
    },

}
