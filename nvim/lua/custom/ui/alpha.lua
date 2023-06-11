return {
    'goolord/alpha-nvim',
    config = function ()
        require'alpha'.setup(require'custom.ui.alpha.themes.my_dashboard'.config)
    end
}
