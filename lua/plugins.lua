-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    -- Theme
    use 'cocopon/iceberg.vim'
    use 'vim-airline/vim-airline'
    use 'vim-airline/vim-airline-themes'
    -- Utilities
    use 'christoomey/vim-tmux-navigator' -- Navigate between tree and file
    use 'preservim/nerdcommenter' -- Comment Line
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.6', -- Telescope, :Files but with syntax highlighting
        "nvim-telescope/telescope-file-browser.nvim",
        { 'nvim-telescope/telescope-fzf-native.nvim', run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' },
        'nvim-telescope/telescope-live-grep-args.nvim', -- Telescope live grep
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use {
        'ronylee11/startup.nvim', -- Startup page
        requires = {"nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim"},
    }
    use 'mattn/emmet-vim'
    use 'voldikss/vim-floaterm'
    use 'github/copilot.vim'
    use 'ThePrimeagen/harpoon'
    use 'lewis6991/gitsigns.nvim'
end)
