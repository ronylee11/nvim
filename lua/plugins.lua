-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
--vim.cmd [[packadd packer.nvim]]

local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

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
    use { -- Autocompletion and definition preview
        'neoclide/coc.nvim', 
        branch = 'release'
    }
    use { -- Syntax highlighting
        'nvim-treesitter/nvim-treesitter',
        'nvim-treesitter/nvim-treesitter-context', -- Sticky header
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    }
    use {
        'kawre/leetcode.nvim',
        run = ':TSUpdate html',
        requires = {
            "nvim-telescope/telescope.nvim",
            "nvim-lua/plenary.nvim", -- required by telescope
            "MunifTanjim/nui.nvim",

            -- optional
            "nvim-treesitter/nvim-treesitter",
            "rcarriga/nvim-notify",
            "nvim-tree/nvim-web-devicons",
        },
    }

    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if packer_bootstrap then
        require('packer').sync()
    end
end)
