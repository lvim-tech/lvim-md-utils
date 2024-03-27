local M = {
	style = {
		file_types = { "markdown" },
		markdown_query = [[
            (atx_heading [
                (atx_h1_marker)
                (atx_h2_marker)
                (atx_h3_marker)
                (atx_h4_marker)
                (atx_h5_marker)
                (atx_h6_marker)
            ] @heading)

            (fenced_code_block) @code

            [
                (list_marker_plus)
                (list_marker_minus)
                (list_marker_star)
            ] @list_marker

            (block_quote (block_quote_marker) @quote_marker)
            (block_quote (paragraph (inline (block_continuation) @quote_marker)))

            (pipe_table_header) @table_head
            (pipe_table_delimiter_row) @table_delim
            (pipe_table_row) @table_row
        ]],
		render_modes = { "n", "c" },
		headings = { "", "", "" },
		bullet = "",
		quote = "┃",
		highlights = {
			heading = {
				backgrounds = { "MarkdownLine" },
				foregrounds = {
					"MarkdownH1",
					"MarkdownH2",
					"MarkdownH3",
					"MarkdownH4",
					"MarkdownH5",
					"MarkdownH6",
				},
			},
			code = "MarkdownLine",
			bullet = "MarkdownBullet",
			table = {
				head = "@markup.heading",
				row = "Delimiter",
			},
			latex = "@markup.math",
			quote = "@markup.quote",
		},
	},
	to_do = {
		lead_chars = {
			"######",
			"#####",
			"####",
			"###",
			"##",
			"#",
			"-",
		},
		indicators = {
			undone = {
				literal = "n",
				icon = "",
				hl = "MarkdownUndone",
			},
			pending = {
				literal = "p",
				icon = "󰅐",
				hl = "MarkdownPending",
			},
			done = {
				literal = "d",
				icon = "",
				hl = "MarkdownDone",
			},
			on_hold = {
				literal = "h",
				icon = "󰏦",
				hl = "MarkdownOnHold",
			},
			cancelled = {
				literal = "c",
				icon = "",
				hl = "MarkdownCancelled",
			},
			important = {
				literal = "i",
				icon = "",
				hl = "MarkdownImportant",
			},
			recurring = {
				literal = "r",
				icon = "󰁯",
				hl = "MarkdownRecurring",
			},
			ambiguous = {
				literal = "a",
				icon = "",
				hl = "MarkdownAmbiguos",
			},
			on_going = {
				literal = "g",
				icon = "",
				hl = "MarkdownOnGoing",
			},
		},
		keys = {
			undone = "<Leader>tu",
			pending = "<Leader>tp",
			done = "<Leader>td",
			on_hold = "<Leader>th",
			cancelled = "<Leader>tc",
			important = "<Leader>ti",
			recurring = "<Leader>tr",
			ambiguous = "<Leader>ta",
			on_going = "<Leader>to",
		},
	},
	wrap = {
		keys = {
			bold = "<Leader>cb",
			italic = "<Leader>ci",
			link = "<Leader>cl",
			code = "<Leader>cc",
		},
	},
	follow_link = {
		key = "<CR>",
	},
}

return M
