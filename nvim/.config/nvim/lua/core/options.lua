-- misc
vim.opt.fileencoding = "utf-8" -- the encoding written to a file

-- content display
vim.opt.wrap = false -- Don't wrap lines
vim.opt.autoindent = true
vim.opt.expandtab = true -- convert tabs to spaces
vim.opt.shiftwidth = 4 -- the number of spaces inserted for each indentation
vim.opt.tabstop = 4 -- insert 4 spaces for a tab
vim.opt.splitbelow = true -- force all horizontal splits to go below current window
vim.opt.splitright = true -- force all vertical splits to go to the right of current window

-- search
vim.opt.hlsearch = false -- highlight all matches on previous search pattern
vim.opt.incsearch = true -- highlight all matches on previous search pattern
vim.opt.ignorecase = true -- ignore case in search patterns

-- Interface
vim.opt.cursorline = true -- Highlight current line
vim.opt.colorcolumn = "99"
vim.opt.number = true -- Line numbers
vim.opt.numberwidth = 4 -- set number column width to 2 {default 4}
vim.opt.relativenumber = true -- Relative line numbers
vim.opt.termguicolors = true -- set term gui colors (most terminals support this)
vim.opt.cmdheight = 1 -- more space in the neovim command line for displaying messages
vim.opt.guicursor = ""
vim.opt.signcolumn = "yes" -- always show the sign column, otherwise it would shift the text each time
vim.opt.scrolloff = 0 -- minimal number of screen lines to keep above and below the cursor
vim.opt.sidescrolloff = 8 -- minimal number of screen columns either side of cursor if wrap is `false`
vim.opt.wrap = true -- display lines as one long line
vim.opt.linebreak = true -- companion to wrap, don't split words

-- undo history
vim.opt.backup = false -- creates a backup file clipboard = "unnamedplus"
vim.opt.swapfile = false -- creates a swapfile
vim.opt.timeoutlen = 300 -- time to wait for a mapped sequence to complete (in milliseconds)
vim.opt.undofile = true -- enable persistent undo
vim.opt.updatetime = 300 -- faster completion (4000ms default)
vim.opt.writebackup = false -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited







































