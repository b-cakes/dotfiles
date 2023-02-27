return {
    'goolord/alpha-nvim',
    config = function ()
        require'alpha'.setup(require'custom.plugins.alpha.themes.my_dashboard'.config)
    end
}
