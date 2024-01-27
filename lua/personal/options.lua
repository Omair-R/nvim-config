-- file options
vim.opt.backup = false                       -- A backup file
vim.opt.swapfile = false                     -- Create a swapfile (temporary memory)
vim.opt.writebackup = true                   -- make backup file before overwriting a file.
vim.opt.fileencoding = "utf-8"               -- the encoding written to a file
-- general vim options
vim.opt.cmdheight = 2                        -- height of vim command space.
vim.opt.completeopt = { "menu", "noselect" } -- insertion mode completion
vim.opt.pumheight = 10                       -- height of popup menu.
vim.opt.clipboard = "unnamedplus"            -- use system clipboard.
vim.opt.termguicolors = true                 -- use system terminal gui colors.
vim.opt.timeoutlen = 1000                    -- (ms) time it takes for a compound keymap to take place
vim.opt.undofile = true                      -- presistent undo
vim.opt.updatetime = 250                     -- updatetime for autocomplelte and cursorhold events.
vim.opt.guifont = "monospace:h17"            -- font of neovim gui
vim.opt.shortmess:append "csI"               -- settings of the short messages.
-- movement controls
vim.opt.whichwrap:append "<>[]hl"            -- wrap to next line when cursor goes beyond end of line.
-- window options
vim.opt.splitbelow = true                    -- window splits below when split is horizontal.
vim.opt.splitright = true                    -- window splits right when split is vertical.
-- Search options
vim.opt.ignorecase = true                    -- ignore the upper case letters when searching.
vim.opt.smartcase = true                     -- do not ignore uppercase letters when the searched term is uppercase.
vim.opt.smartindent = true                   -- smart indentations
vim.opt.hlsearch = false                     -- enable highlighting the last searched term.
vim.opt.showmode = true                      -- show which mode currently active.
-- Text Editing options
vim.opt.mouse = "a"                          -- All mouse functionalities.
vim.opt.number = true                        -- line numbers.
vim.opt.relativenumber = false               -- relative line numbers.
vim.opt.signcolumn = "yes"                   -- sign column is separate from the number column and is always visible.
vim.opt.tabstop = 2                          -- number of spaces created with tab
vim.opt.softtabstop = 2                      -- nubmer of spaces for a softtab
vim.opt.shiftwidth = 2                       -- indentation width.
vim.opt.expandtab = true                     -- convert tab characters to spaces.
vim.opt.cursorline = true                    -- highlight current line.
vim.opt.ruler = false                        -- a ruler under the current line.
vim.opt.wrap = false                         -- wrap long text.
-- vim.opt.breakindent = true                -- preserve indentations when wrap is enabled
vim.opt.conceallevel = 0                     -- show concealed letters normally.
vim.opt.scrolloff = 8                        -- stopscrolling at.
vim.opt.sidescrolloff = 8                    -- similar but to the side.
