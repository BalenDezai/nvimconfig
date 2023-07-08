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

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
packer = require("packer")


-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

-- Install your plugins here
return packer.startup(function(use)
  -- My plugins here
  use "wbthomason/packer.nvim" -- Have packer manage itself
  use "nvim-lua/popup.nvim" -- An implementation of the Popup API from vim in Neovim
  use "nvim-lua/plenary.nvim" -- Useful lua functions used ny lots of plugins

  -- cmp plugins
  use "hrsh7th/nvim-cmp" -- The completion plugin
  use "hrsh7th/cmp-buffer" -- buffer completions
  use "hrsh7th/cmp-path" -- path completions
  use "hrsh7th/cmp-cmdline" -- cmdline completions
  use "saadparwaiz1/cmp_luasnip" -- snippet completions
  use "hrsh7th/cmp-nvim-lsp"

  -- snippets
  use "L3MON4D3/LuaSnip" --snippet engine
  use "rafamadriz/friendly-snippets" -- a bunch of snippets to use

  -- LSP
  use "neovim/nvim-lspconfig" -- enable LSP
  use "williamboman/mason.nvim" -- simple to use language server installer
  use "williamboman/mason-lspconfig.nvim" -- simple to use language server installer

  -- Telescope
  use "nvim-telescope/telescope.nvim"
  use 'nvim-telescope/telescope-media-files.nvim'

  use "rebelot/kanagawa.nvim" 

  use "windwp/nvim-autopairs"
  
   -- Treesitter
  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
  }
  use "nvim-treesitter/playground" 
 
  use "numToStr/Comment.nvim"
  use "JoosepAlviste/nvim-ts-context-commentstring"
  -- Git
  use "lewis6991/gitsigns.nvim" 
  -- nvm tree
  use 'kyazdani42/nvim-web-devicons'
  use 'kyazdani42/nvim-tree.lua' 
  -- bufferline
  use "akinsho/bufferline.nvim"
  use "moll/vim-bbye"
  -- status line
  use 'freddiehaddad/feline.nvim'
  use 'sunjon/shade.nvim'
  use {
    "jose-elias-alvarez/null-ls.nvim",
    config = function()
      local null_ls = require("null-ls")

      null_ls.setup({
        sources = {
          null_ls.builtins.formatting.stylua,
          null_ls.builtins.diagnostics.eslint,
          null_ls.builtins.code_actions.eslint_d,
          null_ls.builtins.completion.spell,
          null_ls.builtins.code_actions.cspell,
          null_ls.builtins.code_actions.gitsigns,
          null_ls.builtins.code_actions.ts_node_action,
          null_ls.builtins.diagnostics.clang_check,
          null_ls.builtins.diagnostics.cppcheck,
          null_ls.builtins.diagnostics.cpplint,
          null_ls.builtins.diagnostics.flake8,
          null_ls.builtins.diagnostics.jsonlint,
          null_ls.builtins.formatting.clang_format,
          null_ls.builtins.formatting.csharpier,
        },
      })
    end
  }
  use {
   "glepnir/dashboard-nvim",
    event = "VimEnter",
    config = function()
      require("dashboard").setup {
        theme = 'hyper',
        config = {
          week_header = {
           enable = true,
          },
          shortcut = {
            { desc = '󰊳 Update', group = '@property', action = 'Lazy update', key = 'u' },
            {
              icon = ' ',
              icon_hl = '@variable',
              desc = 'Files',
              group = 'Label',
              action = 'Telescope find_files',
              key = 'f',
            },
            {
              desc = ' Apps',
              group = 'DiagnosticHint',
              action = 'Telescope app',
              key = 'a',
            },
            {
              desc = ' dotfiles',
              group = 'Number',
              action = 'Telescope dotfiles',
              key = 'd',
            },
          },
        },
        disable_move = false,
        shortcut_type = "letter",
        change_to_vcs_root = false,
        hide = {
          statusline = true,
          tabline = true,
          winbar = true,
        },
      }
    end
  }
  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require("packer").sync()
  end
end)
