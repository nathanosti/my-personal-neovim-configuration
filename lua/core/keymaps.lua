vim.g.mapleader = " "

vim.opt.laststatus= 2
vim.opt.cursorline = true
vim.opt.autoread = true

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true
vim.opt.expandtab = true

-- keymap to clean the neo vim search
vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')

-- Navigate vim panes better
vim.keymap.set("n", "<c-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<c-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<c-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<c-l>", ":wincmd l<CR>")

--close all buffers forced
vim.keymap.set("n", "<leader>q", ":wqa!<CR>")

--BarBar Keybindings
local opts = { noremap = true, silent = true }

-- Move to previous/next
vim.keymap.set("n", "<leader>,", ":BufferPrevious<CR>", opts)
vim.keymap.set("n", "<leader>.", ":BufferNext<CR>", opts)
-- Re-order to previous/next
vim.keymap.set("n", "<leader><", ":BufferMovePrevious<CR>", opts)
vim.keymap.set("n", "<leader>>", ":BufferMoveNext<CR>", opts)
-- Goto buffer in position...
vim.keymap.set("n", "<leader>1", ":BufferGoto 1<CR>", opts)
vim.keymap.set("n", "<leader>2", ":BufferGoto 2<CR>", opts)
vim.keymap.set("n", "<leader>3", ":BufferGoto 3<CR>", opts)
vim.keymap.set("n", "<leader>4", ":BufferGoto 4<CR>", opts)
vim.keymap.set("n", "<leader>5", ":BufferGoto 5<CR>", opts)
-- Pin/unpin buffer
vim.keymap.set("n", "<leader>p", ":BufferPin<CR>", opts)
-- Close buffer
vim.keymap.set("n", "<leader>c", ":BufferClose<CR>", opts)
vim.keymap.set("n", "<leader>P", ":BufferPick<CR>", opts)
-- Sort automatically by...
vim.keymap.set("n", "<leader>bb", ":BufferOrderByBufferNumber<CR>", opts)
vim.keymap.set("n", "<leader>bd", ":BufferOrderByDirectory<CR>", opts)
vim.keymap.set("n", "<leader>bl", ":BufferOrderByLanguage<CR>", opts)
vim.keymap.set("n", "<leader>bw", ":BufferOrderByWindowNumber<CR>", opts)

vim.wo.number = true
