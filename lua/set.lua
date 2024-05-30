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
-- Treesitter Folding
--vim.opt.foldmethod     = 'expr'
--vim.opt.foldexpr       = 'nvim_treesitter#foldexpr()'
vim.opt.foldenable = false
---WORKAROUND
vim.api.nvim_create_autocmd({'BufEnter','BufAdd','BufNew','BufNewFile','BufWinEnter'}, {
  group = vim.api.nvim_create_augroup('TS_FOLD_WORKAROUND', {}),
  callback = function()
    vim.opt.foldmethod     = 'expr'
    vim.opt.foldexpr       = 'nvim_treesitter#foldexpr()'
  end
})
---ENDWORKAROUND
