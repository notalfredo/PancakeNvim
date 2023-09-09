return {
	{
            "nvim-treesitter/nvim-treesitter",
            build = ":TSUpdate",

            config = function () 
                local configs = require("nvim-treesitter.configs")

                configs.setup({

  		    ensure_installed = { "c", "javascript", "typescript", "lua", "rust" },

                    -- Install parsers synchronously (only applied to `ensure_installed`)
                    sync_install = false,

                    -- Automatically install missing parsers when entering buffer
                    -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
                    auto_install = true,

                    highlight = {
                      enable = true,
                    }
	        })
             end,
     }
}
