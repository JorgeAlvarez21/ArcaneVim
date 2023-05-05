require("custom.remap")
require("custom")
require("custom.set")
require('packer').startup(function()
  use('wbthomason/packer.nvim')
  -- add any other plugins here
  
    use({
      "nvim-telescope/telescope.nvim",
      requires = { { "nvim-lua/plenary.nvim" }, { "kdheepak/lazygit.nvim" } },
      config = function()
        require("telescope").load_extension("lazygit")
      end,
    })

  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

  use('nvim-treesitter/playground')

  use('theprimeagen/harpoon')
	
  use('mbbill/undotree')

  use('catppuccin/nvim')

  use('tpope/vim-fugitive')

  use('tell-k/vim-autopep8')

  use('EdenEast/nightfox.nvim')

  use('simeji/winresizer')

  use('tpope/vim-surround')

  use('max397574/better-escape.nvim')

  use('preservim/nerdcommenter')

  use('fsouza/prettierd')

  use('windwp/nvim-ts-autotag')

  use('gennaro-tedesco/nvim-peekup')

  use('gen740/SmoothCursor.nvim')
 
  use('simrat39/symbols-outline.nvim')

  use('ggandor/leap.nvim')

  use {
      'wincent/command-t',
      run = 'cd lua/wincent/commandt/lib && make',
      setup = function ()
          vim.g.CommandTPreferredImplementation = 'lua'
      end,
      config = function()
          require('wincent.commandt').setup({
              -- Customizations go here.
          })
      end,
  }

  use('jvgrootveld/telescope-zoxide')

  use('onsails/lspkind.nvim')

  use('jose-elias-alvarez/null-ls.nvim')

  use('nvim-tree/nvim-tree.lua')
  use('nvim-tree/nvim-web-devicons')
  use('liuchengxu/vim-clap')
  use('cjrh/vim-conda')
  use('folke/twilight.nvim' )
  use('voldikss/vim-floaterm')
  use {
      "folke/which-key.nvim",
      config = function()
        vim.o.timeout = true
        vim.o.timeoutlen = 300
        require("which-key").setup {
          -- your configuration comes here
          -- or leave it empty to use the default settings
          -- refer to the configuration section below
        }
      end
    }

  use('pangloss/vim-javascript')

  use('mxw/vim-jsx')

  use('norcalli/nvim-colorizer.lua')

  use('jiangmiao/auto-pairs')

  use('airblade/vim-rooter')

  use('nvim-lualine/lualine.nvim')

  use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}

  use('sindrets/diffview.nvim')

  use('cljoly/telescope-repo.nvim')
  use {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v1.x',
  requires = {
    -- LSP Support
    {'neovim/nvim-lspconfig'},             -- Required
    {'williamboman/mason.nvim'},           -- Optional
    {'williamboman/mason-lspconfig.nvim'}, -- Optional

    -- Autocompletion
    {'hrsh7th/nvim-cmp'},         -- Required
    {'hrsh7th/cmp-nvim-lsp'},     -- Required
    {'hrsh7th/cmp-buffer'},       -- Optional
    {'hrsh7th/cmp-path'},         -- Optional
    {'saadparwaiz1/cmp_luasnip'}, -- Optional
    {'hrsh7th/cmp-nvim-lua'},     -- Optional

    -- Snippets
    {'L3MON4D3/LuaSnip'},             -- Required
    {'rafamadriz/friendly-snippets'}, -- Optional
  }
}
end)


vim.env.CONDA_PREFIX = vim.fn.system('conda info --base'):sub(1, -2)
