return {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    ---@module "ibl"
    ---@type ibl.config
    opts = {
        indent = {
			char = '┊',
			tab_char = '┊',
            smart_indent_cap = true,
		},
		scope = {
			char = '│',
		}
    },
}
