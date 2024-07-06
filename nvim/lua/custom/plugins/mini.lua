return {

    {
        'echasnovski/mini.basics',
        version = false,
        config = function ()
            require('mini.basics').setup({
                mappings = { windows = true },
            })
        end
    },

    {
        'echasnovski/mini.pairs',
        version = false,
        config = function ()
            require('mini.pairs').setup({})
        end
    },

    {
        'echasnovski/mini.cursorword',
        version = false,
        config = function ()
            require("mini.cursorword").setup({})
        end
    },

    {
        'echasnovski/mini.files',
        version = false,
        config = function ()
            require("mini.files").setup({
                content = {
                    filter = function(entry)
                        return entry.name ~= '.DS_Store' and entry.name ~= '.git' and entry.name ~= '.direnv'
                    end,
                    sort = function(entries)
                        -- technically can filter entries here too, and checking gitignore for _every entry individually_
                        -- like I would have to in `content.filter` above is too slow. Here we can give it _all_ the entries
                        -- at once, which is much more performant.
                        local all_paths = table.concat(
                            vim.tbl_map(function(entry)
                                return entry.path
                            end, entries),
                            '\n'
                        )
                        local output_lines = {}
                        local job_id = vim.fn.jobstart({ 'git', 'check-ignore', '--stdin' }, {
                            stdout_buffered = true,
                            on_stdout = function(_, data)
                                output_lines = data
                            end,
                        })

                        -- command failed to run
                        if job_id < 1 then
                            return entries
                        end

                        -- send paths via STDIN
                        vim.fn.chansend(job_id, all_paths)
                        vim.fn.chanclose(job_id, 'stdin')
                        vim.fn.jobwait({ job_id })
                        return require('mini.files').default_sort(vim.tbl_filter(function(entry)
                            return not vim.tbl_contains(output_lines, entry.path)
                        end, entries))
                    end,
                },
            })
        end
    },

    {
        'echasnovski/mini.colors',
        version = false,
        config = function ()
            require('mini.colors').setup({})
        end
    },

    {
        'echasnovski/mini.hues',
        version = false,
        -- config = function ()
        --     require('mini.hues').setup({})
        -- end
    },

    {
        'echasnovski/mini.hipatterns',
        version = false,
        config = function ()
            local hipatterns = require("mini.hipatterns")
            hipatterns.setup({
                highlighters = {
                    hex_color = hipatterns.gen_highlighter.hex_color({
                        style = 'inline'
                    }),
                },
            })
        end
    },

    {
        'echasnovski/mini.misc',
        version = false,
        config = function ()
            require("mini.misc").setup({})
        end
    },

    {
        "echasnovski/mini.icons",
        opts = {},
        lazy = true,
        specs = {
            { "nvim-tree/nvim-web-devicons", enabled = false, optional = true },
        },
        init = function()
            package.preload["nvim-web-devicons"] = function()
                require("mini.icons").mock_nvim_web_devicons()
                return package.loaded["nvim-web-devicons"]
            end
        end,
    },
}

