local nmap = require("keymap").nmap
local nnoremap = require("keymap").nnoremap
local vnoremap = require("keymap").vnoremap
local xnoremap = require("keymap").xnoremap
local inoremap = require("keymap").inoremap
local tnoremap = require("keymap").tnoremap

nnoremap("<C-B>", "<cmd>:wincmd v<bar> :Ex <bar> :vertical resize 30<CR>")
nnoremap("<leader>=", "<cmd>:vertical resize +5<CR>")
nnoremap("<leader>-", "<cmd>:vertical resize -5<CR>")
nnoremap("<leader>ff", "<cmd>Telescope find_files<CR>")
nnoremap("<leader>lg", "<cmd>Telescope live_grep<CR>")
nnoremap("<leader>of", "<cmd>Telescope oldfiles<CR>")
nnoremap("<leader>fb", "<cmd>Telescope file_browser<CR>")
nnoremap("<leader>hs", "<cmd>Telescope notify<CR>")

-- Delete without yanking
-- Mess with default keybinds
nnoremap('d', '"_d')
vnoremap('d', '"_d')
nnoremap('s', '"_s')
vnoremap('s', '"_s')
nnoremap('S', '"_S')
vnoremap('S', '"_S')
nnoremap('x', '"_x')
vnoremap('x', '"_x')

--Replace delete with yank
nnoremap('<leader>d', 'd')
xnoremap('<leader>d', 'd')
nnoremap('<leader>s', 's')
xnoremap('<leader>s', 's')
nnoremap('<leader>S', 'S')
xnoremap('<leader>S', 'S')
nnoremap('<leader>x', 'x')
xnoremap('<leader>x', 'x')

--Tabs
--New Tab
nmap('<c-w>t', ':tabnew<cr>')
--Close Tab
nmap('<c-w>x', ':tabclose<cr>')
--Switching Tabs
nmap('<C-Right>', ':tabn<cr>')
nmap('<C-Left>', ':tabp<cr>')
--Jump to Tab
nmap('<c-w>1', '1gt')
nmap('<c-w>2', '2gt')
nmap('<c-w>3', '3gt')
nmap('<c-w>4', '4gt')
nmap('<c-w>5', '5gt')
nmap('<c-w>6', '6gt')
nmap('<c-w>7', '7gt')
nmap('<c-w>8', '8gt')
nmap('<c-w>9', '9gt')
nmap('<c-w>0', '10gt')

--Remember folds
-- Create an augroup named 'remember_folds'
vim.api.nvim_create_augroup('remember_folds', {})
-- Create an autocmd that saves the view when leaving a buffer
vim.api.nvim_create_autocmd('BufWinLeave', {
    group = 'remember_folds',
    pattern = '*.*',
    command = 'mkview'
})

-- Create an autocmd that loads the view silently when entering a buffer
vim.api.nvim_create_autocmd('BufWinEnter', {
    group = 'remember_folds',
    pattern = '*.*',
    command = 'silent! loadview'
})

-- Comment Line (NERDCommenter)
vim.cmd[[filetype plugin on]]
nnoremap("<C-_>", "<Plug>NERDCommenterToggle")
vnoremap("<C-_>", "<Plug>NERDCommenterToggle")

-- Emmet
nnoremap("<C-Z>", "<nop>")
vim.g.user_emmet_leader_key='<C-Z>'

-- Force saving files that require root permission 
vim.cmd[[cnoremap w!! w !sudo tee > /dev/null %]]


-- Open Floaterm in current directory
nmap('<A-Esc>', ':FloatermToggle<CR>')
tnoremap('<esc><esc>', '<c-\\><c-n>')

-- Harpoon
nnoremap('<c-a>', ':lua require("harpoon.ui").toggle_quick_menu()<CR>')
nnoremap('<a-a>', ":lua require'harpoon.mark'.add_file()<CR>")
nnoremap('<a-1>', ':lua require("harpoon.ui").nav_file(1)<CR>')
nnoremap('<a-2>', ':lua require("harpoon.ui").nav_file(2)<CR>')
nnoremap('<a-3>', ':lua require("harpoon.ui").nav_file(3)<CR>')
nnoremap('<a-4>', ':lua require("harpoon.ui").nav_file(4)<CR>')
nnoremap('<a-5>', ':lua require("harpoon.ui").nav_file(5)<CR>')
nnoremap('<a-6>', ':lua require("harpoon.ui").nav_file(6)<CR>')
nnoremap('<a-7>', ':lua require("harpoon.ui").nav_file(7)<CR>')
nnoremap('<a-8>', ':lua require("harpoon.ui").nav_file(8)<CR>')
nnoremap('<a-9>', ':lua require("harpoon.ui").nav_file(9)<CR>')
nnoremap('<a-0>', ':lua require("harpoon.ui").nav_file(0)<CR>')
