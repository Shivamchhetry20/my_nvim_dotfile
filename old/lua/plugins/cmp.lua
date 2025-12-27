return{
    {
			"hrsh7th/nvim-cmp",
            event = "InsertEnter", -- Load earlier
            lazy = false,

            dependencies = {
                "hrsh7th/cmp-nvim-lsp",
                "hrsh7th/cmp-buffer",
                "hrsh7th/cmp-path",
                "hrsh7th/cmp-cmdline",
                "kristijanhusak/vim-dadbod-completion",
            },
            config = function()
            local cmp = require "cmp"
            cmp.setup {
            sources = {
                    { name = "nvim_lsp" },
                    { name = "obsidian" },
                    { name = "vim-dadbod-completion" },
                    { name = "path" },
                    { name = "buffer" },
                },
            }
            end,
		},
}
