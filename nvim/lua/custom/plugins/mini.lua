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
        'echasnovski/mini.statusline',
        version = false,
        config = function ()
            require("mini.statusline").setup({
                content = {
                    active = function ()
                            local mode, mode_hl = MiniStatusline.section_mode({ trunc_width = 120 })
                            local git = MiniStatusline.section_git({ trunc_width = 75 })
                            local diagnostics = MiniStatusline.section_diagnostics({ trunc_width = 75 })
                            local filename = MiniStatusline.section_filename({ trunc_width = 140 })
                            local fileinfo = MiniStatusline.section_fileinfo({ trunc_width = 120 })
                            -- local location = MiniStatusline.section_location({ trunc_width = 75 })
                            local search = MiniStatusline.section_searchcount({ trunc_width = 75 })

                            return MiniStatusline.combine_groups({
                                { hl = mode_hl, strings = { mode } },
                                { hl = 'MiniStatuslineDevinfo', strings = { git, diagnostics } },
                                '%<', -- Mark general truncate point
                                { hl = 'MiniStatuslineFilename', strings = { filename } },
                                '%=', -- End left alignment
                                { hl = 'MiniStatuslineFileinfo', strings = { fileinfo } },
                                { hl = mode_hl, strings = { search } },
                            })
                    end
                },

                set_vim_settings = false,
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
        'echasnovski/mini.comment',
        version = false,
        config = function ()
            require('mini.comment').setup({})
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
        'echasnovski/mini.notify',
        version = false,
        config = function ()
            require("mini.notify").setup()
            -- Defaults
            vim.notify = require('mini.notify').make_notify()

            -- Change duration for errors to show them longer
            local opts = {
                ERROR = { duration = 5000, hl_group = 'DiagnosticError'  },
                WARN  = { duration = 5000, hl_group = 'DiagnosticWarn'   },
                INFO  = { duration = 5000, hl_group = 'DiagnosticInfo'   },
                DEBUG = { duration = 0,    hl_group = 'DiagnosticHint'   },
                TRACE = { duration = 0,    hl_group = 'DiagnosticOk'     },
                OFF   = { duration = 0,    hl_group = 'MiniNotifyNormal' },
            }
            vim.notify = require('mini.notify').make_notify(opts)
        end
    }
}

