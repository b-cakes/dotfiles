return {
    'MeanderingProgrammer/markdown.nvim',
    name = 'render-markdown', -- Only needed if you have another plugin named markdown.nvim
    dependencies = { 'nvim-treesitter/nvim-treesitter' },
    ft = "markdown",
    config = function()
	require('render-markdown').setup({
	    -- Configure whether Markdown should be rendered by default or not
	    start_enabled = true,
	    -- Capture groups that get pulled from markdown
	    markdown_query = [[
		(atx_heading [
		    (atx_h1_marker)
		] @heading)

		(thematic_break) @dash

		(fenced_code_block) @code

		(block_quote (block_quote_marker) @quote_marker)
		(block_quote (paragraph (inline (block_continuation) @quote_marker)))

		(pipe_table) @table
		(pipe_table_header) @table_head
		(pipe_table_delimiter_row) @table_delim
		(pipe_table_row) @table_row
	    ]],
	    -- Capture groups that get pulled from inline markdown
	    inline_query = [[
		(code_span) @code

		(shortcut_link) @callout
	    ]],
	    -- The level of logs to write to file: vim.fn.stdpath('state') .. '/render-markdown.log'
	    -- Only intended to be used for plugin development / debugging
	    log_level = 'error',
	    -- Filetypes this plugin will run on
	    file_types = { 'markdown' },
	    -- Vim modes that will show a rendered view of the markdown file
	    -- All other modes will be unaffected by this plugin
	    render_modes = { 'n', 'c' },
	    -- Characters that will replace the # at the start of headings
	    headings = { '󰲡 ', '', '', '', '', '' },
	    -- Character to use for the horizontal break
	    dash = '-',
		--    -- Character to use for the bullet points in lists
		--    bullets = { '●', '○', '◆', '◇' },
		--    checkbox = {
		-- -- Character that will replace the [ ] in unchecked checkboxes
		-- unchecked = '󰄱 ',
		-- -- Character that will replace the [x] in checked checkboxes
		-- checked = ' ',
		--    },
	    -- Character that will replace the > at the start of block quotes
	    quote = '┃',
	    -- Symbol / text to use for different callouts
	    callout = {
		note = '  Note',
		tip = '  Tip',
		important = '󰅾  Important',
		warning = '  Warning',
		caution = '󰳦  Caution',
	    },
	    -- See :h 'conceallevel' for more information about meaning of value
	    win_options = {
		-- See :h 'conceallevel'
		conceallevel = {
		    -- Used when not being rendered, get user setting
		    default = vim.api.nvim_get_option_value('conceallevel', {}),
		    -- Used when being rendered, concealed text is completely hidden
		    rendered = 2,
		},
		-- See :h 'concealcursor'
		concealcursor = {
		    -- Used when not being rendered, get user setting
		    default = vim.api.nvim_get_option_value('concealcursor', {}),
		    -- Used when being rendered, conceal text in all modes
		    rendered = 'nvic',
		},
	    },
	    -- Add a line above and below tables to complete look, ends up like a window
	    fat_tables = true,
	    -- Define the highlight groups to use when rendering various components
	    highlights = {
		heading = {
		     -- Background of heading line
		    backgrounds = { 'NoiceVirtualText' },
		     -- Foreground of heading character only
		    foregrounds = {
			'markdownH1',
			-- 	'markdownH2',
			-- 	'markdownH3',
			-- 	'markdownH4',
			-- 	'markdownH5',
			-- 	'markdownH6',
		    },
		},
		-- Horizontal break
		dash = 'LineNr',
		-- Code blocks
		code = 'ColorColumn',
		-- Bullet points in list
		bullet = 'Normal',
		checkbox = {
		    -- Unchecked checkboxes
		    unchecked = '@markup.list.unchecked',
		    -- Checked checkboxes
		    checked = '@markup.heading',
		},
		table = {
		    -- Header of a markdown table
		    head = '@markup.heading',
		    -- Non header rows in a markdown table
		    row = 'Normal',
		},
		-- LaTeX blocks
		latex = '@markup.math',
		-- Quote character in a block quote
		quote = '@markup.quote',
		callout = {
		    note = 'DiagnosticInfo',
		    tip = 'DiagnosticOk',
		    important = 'DiagnosticHint',
		    warning = 'DiagnosticWarn',
		    caution = 'DiagnosticError',
		},
	    },
	})
    end
}
