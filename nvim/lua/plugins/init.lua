return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "christoomey/vim-tmux-navigator",
    lazy = false,  -- load immediately, needed for the tmux handoff to work correctly
  },

  {
    "nvim-pack/nvim-spectre",
    dependencies = { "nvim-lua/plenary.nvim" },
    cmd = "Spectre",
    keys = {
      { "<leader>S",  function() require("spectre").toggle() end, desc = "Spectre: toggle" },
      { "<leader>sw", function() require("spectre").open_visual({ select_word = true }) end, desc = "Spectre: search word" },
      { "<leader>sw", function() require("spectre").open_visual() end, mode = "v", desc = "Spectre: search selection" },
      { "<leader>sp", function() require("spectre").open_file_search({ select_word = true }) end, desc = "Spectre: search in file" },
    },
    opts = {
      -- macOS ships BSD sed, which needs an empty argument after -i
      replace_engine = {
        ["sed"] = { cmd = "sed", args = { "-i", "", "-E" } },
      },
    },
  },

  -- test new blink
  -- { import = "nvchad.blink.lazyspec" },

  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },
}
