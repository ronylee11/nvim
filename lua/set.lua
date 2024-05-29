vim.g.mapleader = " "
vim.opt.guicursor = ""
vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.smartindent = true
vim.opt.wrap = false
-- Set <tab> space wide
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
-- Enable to switch buffer without saving
vim.opt.hidden = true 

-- Clipboard
vim.opt.clipboard="unnamed,unnamedplus"
--Netrw config 
vim.g.netrw_banner = 0
vim.g.netrw_liststyle = 3
vim.g.netrw_browse_split = 4
vim.g.netrw_altv = 1
vim.g.netrw_winsize = 25
vim.g.netrw_list_hide=[['\(^\|\s\s\)\zs\.\S\+']] --Hide hidden directories
