local opts = {
    silent = true
}
-- map leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Normal mode --
-- -- window naviation
vim.keymap.set("n", "<C-h>", "<C-w>h", opts)
vim.keymap.set("n", "<C-j>", "<C-w>j", opts)
vim.keymap.set("n", "<C-k>", "<C-w>k", opts)
vim.keymap.set("n", "<C-l>", "<C-w>l", opts)
-- -- window resize
vim.keymap.set("n", "<C-Up>", ":resize +2<CR>", opts)
vim.keymap.set("n", "<C-Down>", ":resize -2<CR>", opts)
vim.keymap.set("n", "<C-Left>", ":vertical resize -2<CR>", opts)
vim.keymap.set("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- -- movememt
vim.keymap.set("n", "<Enter>", "o<Esc>", opts) -- native enter
vim.keymap.set("n", "<S-Enter>", "O<Esc>", opts)
vim.keymap.set("n", "<C-d>", "<C-d>zz", opts)  -- move screen down and keep it centered
vim.keymap.set("n", "<C-u>", "<C-u>zz", opts)  -- move screen up and keep it centered

-- -- search
vim.keymap.set("n", "n", "nzzzv") -- centered next value.
vim.keymap.set("n", "N", "Nzzzv")

-- -- Naviation tree.
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, opts)
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", opts)
vim.keymap.set("n", "<leader>E", ":NvimTreeCollapse<CR>", opts)

-- -- Navigate buffers
vim.keymap.set("n", "<S-l>", ":bnext<CR>", opts)
vim.keymap.set("n", "<S-h>", ":bprevious<CR>", opts)

-- -- terminal options.
vim.keymap.set("n", "<leader>t", ":ToggleTerm<CR>", opts)

-- -- formatter
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, opts)

-- -- better functionalities
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]], opts) -- yanks to clipboard
vim.keymap.set("n", "<leader>Y", [["+Y]], opts)          -- yanks to clipboard
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]], opts) -- delete without cutting
vim.keymap.set("x", "<leader>p", [["_dP]], opts)         -- paste and replace highlighting.

-- -- rename all similar words.
vim.keymap.set("n", "<leader>is", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Insert mode --
vim.keymap.set("i", "jk", "<Esc>", opts) -- Exit mode

-- Visual mode --
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", opts) -- move line up.
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", opts)
vim.keymap.set("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
vim.keymap.set("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)
