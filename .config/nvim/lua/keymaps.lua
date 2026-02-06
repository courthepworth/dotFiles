-- Step 19: More settings and mappings

-- So J-appending doesn't move the cursor location
vim.keymap.set("n", "J", "mzJ`z")

-- Navigation between windows
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-l>', '<C-w>l')
vim.keymap.set('n', '<C-;>', '<C-w>;')

-- Remaps for Esc
vim.keymap.set('i', 'jj', '<Esc>')
vim.keymap.set('i', 'jk', '<Esc>')
vim.keymap.set('i', 'kj', '<Esc>')
vim.keymap.set('i', '<C-j>', '<Esc>')

-- Move highlighted text
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Centering for search
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Yanking, not to vim , but to system clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")
--
-- Don't loose your paste with deleting over text
vim.keymap.set("x", "<leader>p", "\"_dP")

-- Create line without going into insert mode
vim.keymap.set("n", "<leader>o", "o<Esc>k")
vim.keymap.set("n", "<leader>O", "O<Esc>j")

-- -- Navigate buffers: Space + h/l
vim.keymap.set('n', '<leader>l', ':bnext<CR>')
vim.keymap.set('n', '<leader>h', ':bprevious<CR>')
