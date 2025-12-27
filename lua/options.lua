-- Set highlight on search
vim.o.hlsearch = true

-- Make line numbers default
vim.wo.number = true
vim.o.relativenumber = true

-- Disable mouse mode
vim.o.mouse = ''

-- Enable break indent
vim.o.breakindent = true

-- Save undo history
vim.o.undofile = true

-- Case insensitive searching UNLESS /C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Decrease update time
vim.o.updatetime = 250
vim.wo.signcolumn = 'yes'

-- Undercurl
vim.cmd([[let &t_Cs = "\e[4:3m"]])
vim.cmd([[let &t_Ce = "\e[4:0m"]])
-- Horizontal split
vim.keymap.set("n", "<leader>sp", ":split<CR>", { noremap = true, silent = true, desc = "Horizontal split" })

-- Vertical split
vim.keymap.set("n", "<leader>sv", ":vsplit<CR>", { noremap = true, silent = true, desc = "Vertical split" })

-- Equalize window sizes
vim.keymap.set("n", "<leader>se", ":wincmd =<CR>", { noremap = true, silent = true, desc = "Equalize splits" })

-- Close the current window
vim.keymap.set("n", "<leader>cw", ":close<CR>", { noremap = true, silent = true, desc = "Close current window" })

-- Quit Neovim entirely (if it's the last window)
vim.keymap.set("n", "<leader>qq", ":q<CR>", { noremap = true, silent = true, desc = "Quit Neovim" })

-- Close all windows except the current one
vim.keymap.set("n", "<leader>co", ":only<CR>", { noremap = true, silent = true, desc = "Close all other windows" })
-- Noice
vim.api.nvim_set_keymap("n", "<leader>m", ":Noice dismiss<CR>", {noremap=true})
-- Set colorscheme
--vim.cmd [[colorscheme onedark]]
require("catppuccin").setup({
    transparent_background = true, -- Enables transparenc 
})
vim.cmd.colorscheme "catppuccin"
--vim.cmd()
vim.opt.clipboard = 'unnamedplus'

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'


-- Create a new note
vim.keymap.set("n", "<leader>nn", "<cmd>ObsidianNew<cr>", { desc = "New Note" })

-- Search notes
vim.keymap.set("n", "<leader>os", "<cmd>ObsidianSearch<cr>", { desc = "Search Notes" })

-- Concealer for Neorg
vim.o.conceallevel=2

-- [[ Basic Keymaps ]]
-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.g.python3_host_prog = "C:\\Users\\Shivam\\miniconda3\\envs\\pytorch-tutorial\\python.exe"
vim.keymap.set("n", "<leader>ch", ":checkhealth<CR>", { desc = "Check Neovim Health" })
