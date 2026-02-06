-- Step 19: More settings and mappings

-- Basic settings
vim.cmd("set nu")                         -- Line numbers
vim.cmd("set rnu")                        -- Relavtive numbers
vim.cmd("set scrolloff=10")               -- Keep 10 lines above/below cursor
vim.g.mapleader = " "                     -- Set Leader to space

-- Indentation
vim.cmd("set expandtab")                  -- Use spaces instead of tabs
vim.cmd("set tabstop=2")                  -- Tab width
vim.cmd("set softtabstop=2")              -- Soft tab stop
vim.cmd("set shiftwidth=2")               -- Indent width
vim.opt.smartindent=true                  -- Smart auto-indenting
vim.opt.autoindent=true                   -- Copy indent from current line

-- Search settings
vim.opt.ignorecase = true                 -- Case insensitive search
vim.opt.smartcase = true                  -- Case sensitive if uppercase in search
vim.opt.hlsearch = false                  -- Don't highlight search results
vim.opt.incsearch = true                  -- Show matches as you type

-- Behavior settings
vim.opt.backspace = "indent,eol,start"    -- Modern backspace behavior
vim.opt.swapfile = false                  -- no swapfile
vim.opt.wrap = true                       -- Word wrap
vim.opt.lbr = true                        -- Line break

-- BLINKY CURSOR, found on Reddit
vim.opt.guicursor = {
  "n-v-c:block-Cursor/lCursor",         -- Block cursor in normal, visual, and command modes
  "i:ver25-blinkwait700-blinkoff400-blinkon250-Cursor/lCursor",  -- Blinking vertical line in insert mode
  "r-cr-o:hor20-Cursor/lCursor",        -- Horizontal line cursor in replace, command-line replace, and operator-pending modes
  "a:blinkwait700-blinkoff400-blinkon250",  -- Global blinking settings for all modes
}


