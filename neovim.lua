--  .-^~^-. \/ .-^~^-. \\ `-._.-` // .-^~^-. \/ .-^~^-.
-- |                                                   |
-- |   ,---.          ,--.                             |
-- |  '   .-'  ,--,--.|  |,-.,--.,--.,--.--. ,--,--.   |
-- |  `.  `-. ' ,-.  ||     /|  ||  ||  .--'' ,-.  |   |
-- |  .-'    |\ '-'  ||  \  \'  ''  '|  |   \ '-'  |   |
-- |  `-----'  `--`--'`--'`--'`----' `--'    `--`--'   |
-- |                 . .         . .                   |
-- |               .-^~^-.     .-^~^-.                 |
-- |               `-._.-'     `-._.-'                 |
-- |                  |           |                    |
-- |     ,--.   ,--.             ,--.     ,--.         |
-- |     |   `.'   | ,---.  ,---.|  ,---. `--'         |
-- |     |  |'.'|  || .-. || .--'|  .-.  |,--.         |
-- |     |  |   |  |' '-' '\ `--.|  | |  ||  |         |
-- |     `--'   `--' `---'  `---'`--' `--'`--'         |
-- |                                                   |
--  .-^~^-. \/ .-^~^-. \\ `-._.-` // .-^~^-. \/ .-^~^-.

return {
	{
		"bjarneo/aether.nvim",
		branch = "v2",
		name = "aether",
		priority = 1000,
		opts = {
			transparent = false,
			colors = {
				-- Background colors
				bg = "#2a2a26",
				bg_dark = "#2a2a26",
				bg_highlight = "#e98129",

				-- Foreground colors
				-- fg: Object properties, builtin types, builtin variables, member access, default text
				fg = "#fbc6c8",
				-- fg_dark: Inactive elements, statusline, secondary text
				fg_dark = "#e98129",
				-- comment: Line highlight, gutter elements, disabled states
				comment = "#8bc7c3",

				-- Accent colors
				-- red: Errors, diagnostics, tags, deletions, breakpoints
				red = "#bf3533",
				-- orange: Constants, numbers, current line number, git modifications
				orange = "#fbc6c8",
				-- yellow: Types, classes, constructors, warnings, numbers, booleans
				yellow = "#fbc6c8",
				-- green: Comments, strings, success states, git additions
				green = "#8bc7c3",
				-- cyan: Parameters, regex, preprocessor, hints, properties
				cyan = "#8bc7c3",
				-- blue: Functions, keywords, directories, links, info diagnostics
				blue = "#8bc7c3",
				-- purple: Storage keywords, special keywords, identifiers, namespaces
				purple = "#8bc7c3",
				-- magenta: Function declarations, exception handling, tags
				magenta = "#bf3533",
			},
			on_highlights = function(hl, c)
				hl["@constant.builtin"] = { fg = c.orange }
				hl["@keyword.function"] = { fg = c.magenta, bold = true }
				hl["@module"] = { fg = c.purple }
				hl["@property"] = { fg = c.fg_dark }
				hl["@type.builtin"] = { fg = c.blue }
				hl["@variable.member"] = { fg = c.fg_dark }

				-- Force window separators away from the default near-black fallback.
				hl.WinSeparator = { fg = c.comment }
				hl.VertSplit = { fg = c.comment }
				hl.NeoTreeWinSeparator = { fg = c.comment }
				hl.NeoTreeVertSplit = { fg = c.comment }
				hl.NvimTreeVertSplit = { fg = c.comment }

				hl["@lsp.type.class"] = { fg = c.yellow }
				hl["@lsp.type.interface"] = { fg = c.yellow }
				hl["@lsp.type.namespace"] = { fg = c.purple }
				hl["@lsp.type.parameter"] = { fg = c.cyan, italic = true }
				hl["@lsp.type.property"] = { fg = c.fg_dark }
				hl["@lsp.type.struct"] = { fg = c.yellow }
				hl["@lsp.type.type"] = { fg = c.yellow }
				hl["@lsp.type.typeParameter"] = { fg = c.blue }
			end,
		},
		config = function(_, opts)
			require("aether").setup(opts)
			vim.cmd.colorscheme("aether")

			-- Enable hot reload
			require("aether.hotreload").setup()
		end,
	},
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "aether",
		},
	},
}

--   ____  __   __
--  / __ \/ /__/ /
-- / /_/ / / _  /
-- \____/_/\_,_/
--      __     __        __
--  __ / /__  / /  ___  / /  ___
-- / // / _ \/ _ \/ _ \/ _ \/ _ \
-- \___/\___/_.__/\___/_.__/\___/

--   ____  __   __
--  / __ \/ /__/ /
-- / /_/ / / _  / 
-- \____/_/\_,_/  
--      __     __        __      
--  __ / /__  / /  ___  / /  ___ 
-- / // / _ \/ _ \/ _ \/ _ \/ _ \
-- \___/\___/_.__/\___/_.__/\___/
--                               