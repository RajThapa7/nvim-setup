--  set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

---------------------
-- General Keymaps
---------------------

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>")

-- delete single character without copying into register
keymap.set("n", "x", '"_x')

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>") -- increment
keymap.set("n", "<leader>-", "<C-x>") -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tp", ":tabp<CR>") --  go to previous tab
keymap.set("n", "<leader>tn", ":tabnew<CR>") -- open a new tab
keymap.set("n", "<leader>ts", ":tabnew ") -- opens a new tab but need to mention the file name
keymap.set("n", "<leader><leader>", ":tabnext#<CR>") -- switch to last opened tab

----------------------
-- Plugin Keybinds
----------------------

-- vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>") -- toggle split window maximization

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- toggle file explorer

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags

--save---
keymap.set("n", "<C-s>", ":w<CR>")
keymap.set("i", "<C-s>", "<cmd>w<CR>")

-- buffers
keymap.set("n", "<leader>b", ":ls<CR>") --gives the list of buffer
keymap.set("n", "<leader>bn", ":bnext<CR>") -- moves to the next buffer
keymap.set("n", "<leader>bp", ":bprevious<CR>") -- moves to the previous buffer
keymap.set("n", "<leader>bd", ":%bdelete<CR>") -- deletes all the buffer from the list

--toggle the wrap--
keymap.set("n", "<M-z>", ":set wrap!<CR>")

-- some tips and tricks
-- when you press ctrl+t in the treesitter file explorer it will open the file in a new tab
