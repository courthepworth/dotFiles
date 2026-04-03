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

-- Native Terminal settings
-- Made by ChatGPT
local term_buf = nil
local term_win = nil
local last_win = nil

local function toggle_vsplit_terminal()
  local current_win = vim.api.nvim_get_current_win()
  local current_buf = vim.api.nvim_get_current_buf()

  -- If currently in the terminal window, go back to the last non-terminal window
  if vim.bo[current_buf].buftype == "terminal" then
    if last_win and vim.api.nvim_win_is_valid(last_win) then
      vim.api.nvim_set_current_win(last_win)
    else
      vim.cmd("wincmd p")
    end
    return
  end

  -- Remember where you came from
  last_win = current_win

  -- If terminal window is already visible, jump to it
  if term_win and vim.api.nvim_win_is_valid(term_win) then
    vim.api.nvim_set_current_win(term_win)
    vim.cmd("startinsert")
    return
  end

  -- If terminal buffer exists but is hidden, reopen it in a vsplit
  if term_buf and vim.api.nvim_buf_is_valid(term_buf) then
    vim.cmd("vsplit")
    term_win = vim.api.nvim_get_current_win()
    vim.api.nvim_win_set_buf(term_win, term_buf)
    vim.cmd("startinsert")
    return
  end

  -- Otherwise create it for the first time
  vim.cmd("vsplit | terminal")
  term_win = vim.api.nvim_get_current_win()
  term_buf = vim.api.nvim_get_current_buf()
  vim.cmd("startinsert")
end

vim.keymap.set("n", "<leader>t", toggle_vsplit_terminal, { desc = "Toggle terminal" })

vim.keymap.set("t", "<leader>t", function()
  vim.cmd("stopinsert")
  if last_win and vim.api.nvim_win_is_valid(last_win) then
    vim.api.nvim_set_current_win(last_win)
  else
    vim.cmd("wincmd p")
  end
end, { desc = "Back to previous window" })
